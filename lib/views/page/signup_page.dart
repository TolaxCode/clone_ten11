// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shopping_ui_project/constant/route.dart';
import 'package:shopping_ui_project/views/page/signin_page.dart';
import 'package:shopping_ui_project/constant/fonts.dart';
import 'package:shopping_ui_project/views/widget/my_button.dart';
import 'package:shopping_ui_project/views/widget/my_textfield.dart';
import '../widget/my_smallButton.dart';
import 'intro_page.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({
    super.key,
  });

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final comfirmController = TextEditingController();
  bool isPassword = true;
  bool isComfirm = true;

  //create accout method
  void userSignUp() async {
    //show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    try {
      //comfirm == password
      if (passwordController.text == comfirmController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
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
      } else {
        //comfirm != password
        // showMessageError(
        //   title: 'ERROR S I G N U P',
        //   message: 'Comfirm and Password is not match!',
        // );
      }
      //pop loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      //pop loading circle
      Navigator.pop(context);
      if (e.code == 'weak-password') {
        //weak password
        // showMessageError(
        //   title: 'Error S I G N U P',
        //   message: 'Your password is weak',
        // );
      } else if (e.code == 'email-already-in-use') {
        //Already create accout
        // showMessageError(
        //   title: 'Error S I G N U P',
        //   message: 'This accout already created',
        // );
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      //backgroundColor: const Color(0xFFe7ded7),
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.only(top: height * 0.15),
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
                    'Sign up your account',
                    style: fontsListTile,
                  ),
                  Column(
                    children: [
                      //Email Textfield
                      MyTextFieldWidget(
                        colorTextField: Colors.black12,
                        hintText: 'Email',
                        suffixIcon: null,
                        prefixIcon: Icons.email_outlined,
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
                        onTap: () {
                          setState(() {
                            isPassword = !isPassword;
                          });
                        },
                      ),
                      //Comfirm Textfield
                      MyTextFieldWidget(
                        colorTextField: Colors.black12,
                        hintText: 'Comfim Password',
                        prefixIcon: Icons.lock_open,
                        suffixIcon:
                            isComfirm ? Icons.visibility_off : Icons.visibility,
                        obscureText: isComfirm,
                        controller: comfirmController,
                        //close eye open eye
                        onTap: () {
                          setState(() {
                            isComfirm = !isComfirm;
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
                          text: 'SIGN UP',
                          icon: null,
                          ontap: () {
                            userSignUp();
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
                          'I am a member !',
                          style: fontsTextfield,
                        ),
                        TextButton(
                          onPressed: () {
                            nextScreen(context, const SignInPage());
                          },
                          child: Text(
                            'Login now',
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
