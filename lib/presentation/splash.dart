import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/routes.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      () => Get.offNamed(AppRoutes.LOGIN),
    );

    return  Scaffold(
      body: Center(
        child: Center(child:  Image.asset('assets/images/logo.png')),
      ),
    );
  }
}