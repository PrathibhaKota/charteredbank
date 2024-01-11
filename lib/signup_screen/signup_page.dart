import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../login/controller/login_controller.dart';
import '../login/view/login_screen.dart';
import '../routes/app_routes.dart';
import '../utils/colorStyles.dart';
import '../utils/constants.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  LoginController get loginController => Get.put(LoginController());
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     /* appBar: AppBar(
        title: const Text("Login Page"),
      ),*/
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.0,vertical: MediaQuery.of(context).size.height*0.1),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 50,),
              Text(Constants.invcom.toUpperCase(),style: const TextStyle(fontSize: 48,color: ColorStyles.headerColor),),
              const Text(Constants.signUp,style: TextStyle(fontSize: 30,color: ColorStyles.black),),
              const SizedBox(height: 50,),
               Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorStyles.grey,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10))
                ),
                 padding: const EdgeInsets.symmetric(horizontal: 15),
                child: const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: Constants.name,
                      hintText: Constants.enterYourName),
                ),
              ),
              const SizedBox(height: 15,),
               Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorStyles.grey,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10))
                ),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: const TextField(
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
              Container(
                width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(horizontal:60 ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorStyles.headerColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    onPressed: () {
                      // Get.to(Second());
                    },
                    child: const Text(Constants.signUp,),
                  )
              ),
              const SizedBox(height: 20,),
              RichText(
                text: TextSpan(
                   style: const TextStyle(color: ColorStyles.grey),
                  children: <TextSpan>[
                    const TextSpan(text: Constants.alreadyRegisterd),
                    TextSpan(
                        text: ' ${Constants.signIn}',
                         style: const TextStyle(color: ColorStyles.headerColor),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.offAndToNamed(AppRoutes.logInView);
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
