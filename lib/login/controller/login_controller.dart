import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../graphql/connections.dart';
import '../login_repository.dart';

class LoginController extends GetxController{

  RxBool isLoading = true.obs;

  LoginRepository repository = LoginRepository(client:clientToQuery());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  RxBool enableSignIn = false.obs;


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  Future<void> login() async {
    final result = await repository.loginUser();

   /* final result = Future.delayed(const Duration(milliseconds: 500), () {
      repository.loginUser();
    });*/
    }

  }

