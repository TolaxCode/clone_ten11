import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shopping_ui_project/views/page/signin_page.dart';

import 'intro_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //sigin ready
          if (snapshot.hasData) {
            return const IntroPage();
          } else {
            //not sigin
            return const SignInPage();
          }
        },
      ),
    );
  }
}
