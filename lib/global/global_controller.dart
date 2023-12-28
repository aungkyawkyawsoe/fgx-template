import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class GlobalController extends GetxController {
  final box = GetStorage();
  final _isDarkTheme = false.obs;
  bool get isDarkTheme => _isDarkTheme.value;

  @override
  void onInit() {
    _isDarkTheme.value = box.read('isDarkTheme') ?? false;
    super.onInit();
  }

  void toggleTheme() {
    _isDarkTheme.value = !_isDarkTheme.value;
    Get.changeThemeMode(_isDarkTheme.value ? ThemeMode.dark : ThemeMode.light);
    box.write('isDarkTheme', _isDarkTheme.value);
  }
}
