import 'package:fgx_template/pages/home/binding.dart';
import 'package:fgx_template/pages/home/view.dart';
import 'package:fgx_template/pages/splash/binding.dart';
import 'package:fgx_template/pages/splash/view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      title: "Splash",
      name: AppRoutes.initial,
      page: () => const SpalshView(),
      binding: SplashBinding(),
    ),
    GetPage(
      title: "Home",
      name: AppRoutes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
