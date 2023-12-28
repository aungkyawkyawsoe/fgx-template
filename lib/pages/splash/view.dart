import 'package:fgx_template/pages/splash/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SpalshView extends GetView<SplashController> {
  const SpalshView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Welcome to",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          Center(
            child: Text(
              "YOUR PROJECT NAME",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
