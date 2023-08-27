// import 'package:flutter/material.dart';
// import 'package:shopping_ui_project/views/page/signin_page.dart';
// import 'package:shopping_ui_project/views/page/signup_page.dart';

// class SiginAndSignUpPage extends StatefulWidget {
//   const SiginAndSignUpPage({super.key});

//   @override
//   State<SiginAndSignUpPage> createState() => _SiginAndSignUpPageState();
// }

// class _SiginAndSignUpPageState extends State<SiginAndSignUpPage> {
//   bool isPage = false;
//   void togglePages() {
//     setState(() {
//       isPage =!isPage;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (isPage) {
//       return SignInPage(
//         onTap: togglePages,
//       );
//     } else {
//       return SignUpPage();
//     }
//   }
// }
