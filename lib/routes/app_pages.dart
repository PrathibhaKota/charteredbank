import 'package:charteredbank/login/view/login_screen.dart';
import 'package:charteredbank/signup_screen/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../login/bindings/login_binding.dart';
import 'app_routes.dart';

class AppPages {
  static List<GetPage> routes = [
    GetPage(name: AppRoutes.logInView, page: () => LoginPage(), bindings: [LoginBinding()]),

     GetPage(name: AppRoutes.signUpView, page: () =>  SignupPage(),),

  ];



}
