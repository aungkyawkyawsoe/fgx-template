import 'dart:async';

import 'package:fgx_template/global/global_controller.dart';
import 'package:fgx_template/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  final globalController = Get.find<GlobalController>();
  @override
  void onReady() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (Get.currentRoute == AppRoutes.initial) {
        Timer(const Duration(milliseconds: 1500), () {
          Get.offNamed(AppRoutes.home);
        });
      }
    });

    super.onInit();
  }
}
