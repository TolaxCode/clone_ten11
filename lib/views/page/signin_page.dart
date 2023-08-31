// ignore_for_file: use_build_context_synchronously, unnecessary_null_comparison

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:shopping_ui_project/constant/route.dart';
import 'package:shopping_ui_project/views/page/intro_page.dart';
import 'package:shopping_ui_project/views/page/signup_page.dart';
import 'package:shopping_ui_project/constant/fonts.dart';
import 'package:shopping_ui_project/views/widget/my_button.dart';
import 'package:shopping_ui_project/views/widget/my_textfield.dart';
import '../widget/my_smallButton.dart';

class SignInPage extends StatefulWidget {
  // Function()? onTap;
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isPassword = true;
  bool isLoginState = false;

  //clear data from textformfield
  void clear() {
    emailController.clear();
    passwordController.clear();
  }

  //creat sigin method
  void userSigin() async {
    //show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    //try sigin
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      // showMessageSuccess(
      //   title: 'L O G I N',
      //   message: 'Login Sucessfull',
      // );
      //pop loading circle
      Navigator.pop(context);
      nextScreen(context, const IntroPage());
    } on FirebaseAuthException catch (e) {
      //pop loading circle
      Navigator.pop(context);
      if (e.code == 'user-not-found') {
        //wrong email
        // showMessageError(
        //   title: 'E R R O R',
        //   message: 'Incorret Email !',
        // );
      } else if (e.code == 'wrong-password') {
        //wrong password
        // showMessageError(
        //   title: 'E R R O R',
        //   message: 'Incorret Password !',
        // );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: const Color(0xFFe7ded7),
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.only(top: height * 0.20),
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.08,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sign in your account',
                    style: fontsListTile,
                  ),
                  Column(
                    children: [
                      //Email Textfield
                      MyTextFieldWidget(
                        colorTextField: Colors.black12,
                        hintText: 'Email',
                        prefixIcon: Icons.email_outlined,
                        suffixIcon: null,
                        obscureText: false,
                        controller: emailController,
                        onTap: null,
                      ),

                      //Password Textfield
                      MyTextFieldWidget(
                        colorTextField: Colors.black12,
                        hintText: 'Password',
                        prefixIcon: Icons.lock_open,
                        suffixIcon: isPassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        obscureText: isPassword,
                        controller: passwordController,
                        //close eye open eye button
                        onTap: () {
                          setState(() {
                            isPassword = !isPassword;
                          });
                        },
                      ),
                      //Button Sign In
                      Padding(
                        padding: EdgeInsets.only(
                          top: height * 0.03,
                        ),
                        child: MyButtonWidget(
                          color: Colors.blue,
                          text: 'SIGN IN',
                          icon: null,
                          ontap: () {
                            userSigin();
                          },
                          colortext: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: height * 0.01,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have account ?',
                          style: fontsTextfield,
                        ),
                        TextButton(
                          onPressed: () {
                            nextScreen(context, SignUpPage());
                          },
                          child: Text(
                            'Register now',
                            style: fontsTextfield,
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Facebook Button
                      MySmallButtonWidget(
                        image: 'assets/image/google.png',
                        colorImage: Colors.black12,
                        ontap: () {},
                      ),
                      MySmallButtonWidget(
                        image: 'assets/image/facebook.png',
                        colorImage: Colors.black12,
                        ontap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
