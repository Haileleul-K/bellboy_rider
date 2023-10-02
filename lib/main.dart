import 'package:bellboy_rider/core/routes.dart';
import 'package:bellboy_rider/presentation/login_page.dart';
import 'package:bellboy_rider/presentation/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(GetMaterialApp(
    title: 'Getx Login Splash',
    initialRoute: AppRoutes.SPLASH,
    getPages: [
      GetPage(name: AppRoutes.SPLASH, page: () => SplashPage()),
      GetPage(name: AppRoutes.LOGIN, page: () => LoginPage()),
    ],
  ));
}

