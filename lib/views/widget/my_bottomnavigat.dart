import 'package:flutter/material.dart';
import 'package:shopping_ui_project/constant/fonts.dart';

class MyBottomNavigatWidget extends StatefulWidget {
  const MyBottomNavigatWidget({super.key});

  @override
  State<MyBottomNavigatWidget> createState() => _MyBottomNavigatWidgetState();
}

int currentIndex = 0;

class _MyBottomNavigatWidgetState extends State<MyBottomNavigatWidget> {
  void _selectPage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      fixedColor: Colors.black,
      iconSize: 34,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: fontsNameShirt, //select
      unselectedLabelStyle: fontsNameShirt, //unselect
      currentIndex: currentIndex,
      onTap: (index) => _selectPage(index),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            color: Colors.black,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          label: 'Menu',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.qr_code_scanner_sharp,
            color: Colors.black,
          ),
          label: 'QR',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle_outlined,
            color: Colors.black,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
