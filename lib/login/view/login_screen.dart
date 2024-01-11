
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_routes.dart';
import '../../utils/colorStyles.dart';
import '../../utils/constants.dart';
import '../controller/login_controller.dart';

//Use relative path imports for code maintainability '../../constants.dart',

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _showPassword = false;
  LoginController get loginController => Get.put(LoginController());

  @override
  void initState() {
    super.initState();
  }

  // use const for widgets for efficient rendering
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     /* appBar: AppBar(
        title: const Text("Login Page"),
      ),*/
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.0,vertical: MediaQuery.of(context).size.height*0.09),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 50,),
              Text(Constants.invcom.toUpperCase(),style: const TextStyle(fontSize: 48,color: ColorStyles.headerColor),),
              const Text(Constants.signIn,style: TextStyle(fontSize: 30,color: ColorStyles.black),),
              const SizedBox(height: 50,),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorStyles.headerColor,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10))
                ),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: loginController.emailController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: Constants.email,
                      hintText: 'Enter valid email id as abc@gmail.com'),
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorStyles.headerColor,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10))
                ),
                child:  TextField(
                  controller: loginController.passwordController,
                  obscureText: !_showPassword ,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: Constants.password,
                      hintText: 'Enter secure password',
                    suffixIcon:  GestureDetector(
                       onTap: (){
                         _showPassword = !_showPassword;
                         setState(() {

                         });
                       },
                        child: Icon(_showPassword ? Icons.visibility: Icons.visibility_off,)),
                  // suffixText: 'Show',
                  suffixStyle: TextStyle(color: ColorStyles.headerColor)),
                ),
              ),
              const SizedBox(height: 20,),
              SizedBox(height: 20,),
             Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(horizontal:60 ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:  ColorStyles.headerColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      onPressed: () {
                        //api call need to be done to navigate to next page
                      },
                      child: const Text(Constants.signIn,),
                    )
                ),
              const SizedBox(height: 20,),
              RichText(
                text: TextSpan(
                  style: const TextStyle(color: ColorStyles.grey),
                  children: <TextSpan>[
                    const TextSpan(text: Constants.notRegistered),
                    TextSpan(
                        text: ' ${Constants.signUp}',
                        style: const TextStyle(color: ColorStyles.headerColor),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                          debugPrint('PR: onTap()');
                          Get.offAndToNamed(AppRoutes.signUpView);
                          }),
                  ],
                ),
              ),
              const SizedBox(
                height: 130,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
