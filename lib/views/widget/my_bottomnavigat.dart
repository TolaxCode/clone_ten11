import 'package:flutter/material.dart';

class MyBottomNavigatWidget extends StatelessWidget {
  const MyBottomNavigatWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      fixedColor: Colors.black,
      iconSize: 34,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_filled,
            color: Colors.black,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.local_mall_outlined,
            color: Colors.black,
          ),
          label: 'Bage',
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
            Icons.notifications_active_outlined,
            color: Colors.black,
          ),
          label: 'Notification',
        ),
      ],
    );
  }
}
