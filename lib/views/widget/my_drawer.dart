// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_ui_project/views/page/signin_page.dart';
import 'package:shopping_ui_project/constant/fonts.dart';

class MyDrawerWidget extends StatefulWidget {
  const MyDrawerWidget({super.key});

  @override
  State<MyDrawerWidget> createState() => _MyDrawerWidgetState();
}

bool isSelectDarkMode = true;
bool isSelectShop = true;

class _MyDrawerWidgetState extends State<MyDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    void userLogout() async {
      await FirebaseAuth.instance.signOut();
    }

    return ListView(
      children: [
        UserAccountsDrawerHeader(
          accountName: Text(
            '',
            style: GoogleFonts.oswald(
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
          accountEmail: Text(
            '${user.email}',
          ),
          currentAccountPicture: ClipOval(
            child: Image.asset(
              'assets/women/w4.jpg',
              fit: BoxFit.cover,
            ),
          ),
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
        ),

        //dark mode
        ListTile(
          title: Text(
            'Dark Mode',
            style: fontsListTile,
          ),
        ),
        const Divider(
          thickness: 2,
        ),
        //light
        ListTile(
          title: Text(
            'Light',
            style: fontDrawer,
          ),
          onTap: () {
            //Get.changeTheme(ThemeData.light());
            setState(() {
              isSelectDarkMode = !isSelectDarkMode;
            });
          },
          selectedColor: Colors.black,
          trailing:
              isSelectDarkMode ? const Icon(Icons.radio_button_checked) : null,
          selected: isSelectDarkMode,
        ),
        const Divider(
          thickness: 2,
        ),
        //Dark
        ListTile(
          title: Text(
            'Dark',
            style: fontDrawer,
          ),
          onTap: () {
            //Get.changeTheme(ThemeData.dark());
            setState(() {
              isSelectDarkMode = !isSelectDarkMode;
            });
          },
          selectedColor: Colors.black,
          trailing:
              isSelectDarkMode ? null : const Icon(Icons.radio_button_checked),
          selected: isSelectDarkMode,
        ),
        const Divider(
          thickness: 2,
        ),
        const SizedBox(
          height: 380,
        ),
        //Logout
        ListTile(
          leading: const Icon(
            Icons.logout_outlined,
            size: 30,
          ),
          title: Text(
            'Logout',
            style: fontDrawer,
          ),
          onTap: () {
            // Get.defaultDialog(
            //   titlePadding: const EdgeInsets.only(top: 10),
            //   title: 'L O G O U T',
            //   barrierDismissible: false,
            //   content: const Text('Do you want logout ?'),
            //   buttonColor: Colors.black,
            //   confirmTextColor: Colors.white,
            //   cancelTextColor: Colors.black,
            //   onCancel: () {},
            //   onConfirm: () {
            //     userLogout();
            //     Get.to(const SignInPage());
            //   },
            // );
          },
        ),
      ],
    );
  }
}
