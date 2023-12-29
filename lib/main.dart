import 'package:fgx_template/core/app_theme.dart';
import 'package:fgx_template/global/global_bindings.dart';
import 'package:fgx_template/global/global_controller.dart';
import 'package:fgx_template/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  Get.put(GlobalController());

  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  final supportedLocales = const [
    Locale('en', 'US'),
    Locale('my', 'MM'),
  ];

  final localizationDelegate = const [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'YOUR PROJECT NAME',
      smartManagement: SmartManagement.full,
      debugShowCheckedModeBanner: false,
      locale: const Locale("my"),
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: Get.find<GlobalController>().isDarkTheme
          ? ThemeMode.dark
          : ThemeMode.light,
      getPages: AppPages.pages,
      localizationsDelegates: localizationDelegate,
      supportedLocales: supportedLocales,
      initialBinding: GlobalBindings(),
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaler: const TextScaler.linear(1.0),
        ),
        child: child!,
      ),
    );
  }
}
