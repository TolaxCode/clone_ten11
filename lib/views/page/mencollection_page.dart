// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:shopping_ui_project/constant/route.dart';
import 'package:shopping_ui_project/model/men_model.dart';
import 'package:shopping_ui_project/views/page/home_page.dart';
import 'package:shopping_ui_project/views/widget/my_mengrid.dart';

import '../widget/fonts.dart';
import '../widget/my_bottomnavigat.dart';

class MenCollectionPage extends StatelessWidget {
  const MenCollectionPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      nextScreen(context, ShopPage());
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                  Text(
                    'Men (${listMenModel.length} Items)',
                    style: fontDrawer,
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
              const MyMenGideWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const MyBottomNavigatWidget(),
    );
  }
}
