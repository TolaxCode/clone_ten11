// ignore_for_file: unused_local_variable, recursive_getters

import 'package:flutter/material.dart';
import 'package:shopping_ui_project/constant/route.dart';
import 'package:shopping_ui_project/model/men_model.dart';
import 'package:shopping_ui_project/views/page/card_page.dart';
import 'package:shopping_ui_project/views/page/home_page.dart';
import 'package:shopping_ui_project/views/widget/my_mengrid.dart';

import '../../constant/fonts.dart';
import '../widget/my_bottomnavigat.dart';

class MenCollectionPage extends StatelessWidget {
  const MenCollectionPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    MenModel menModel = MenModel(
      image: '',
      name: '',
      price: 0,
      des: '',
      composition: '',
    );
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            nextScreen(context, const HomePage());
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Men (${listMenModel.length} Items)',
          style: fontsAppbar,
        ),
        actions: [
          IconButton(
            onPressed: () => nextScreen(
              context,
              CardPage(menModel: menModel),
            ),
            icon: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
      //men gride
      body: const MyMenGideWidget(),
      //btn nav bar
      bottomNavigationBar: const MyBottomNavigatWidget(),
    );
  }
}
