import 'package:flutter/material.dart';
import 'package:shopping_ui_project/constant/route.dart';
import 'package:shopping_ui_project/model/women_model.dart';
import 'package:shopping_ui_project/views/page/home_page.dart';
import 'package:shopping_ui_project/views/widget/my_bottomnavigat.dart';

import '../../constant/fonts.dart';
import '../widget/my_womengride.dart';

class WomenCollectionPage extends StatelessWidget {
  const WomenCollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      nextScreen(context, const HomePage());
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                  Text(
                    'Women (${listWowmenModel.length} Items)',
                    style: fontsNameShirtDetail,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_bag_outlined,
                      size: 30,
                    ),
                  ),
                ],
              ),
              //women gride
              const MyWomenGideWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const MyBottomNavigatWidget(),
    );
  }
}
