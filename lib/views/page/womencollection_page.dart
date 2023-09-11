import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_ui_project/constant/route.dart';
import 'package:shopping_ui_project/model/products.dart';
import 'package:shopping_ui_project/model/women_model.dart';
import 'package:shopping_ui_project/views/page/card_page.dart';
import 'package:shopping_ui_project/views/page/home_page.dart';
import 'package:shopping_ui_project/views/widget/my_bottomnavigat.dart';

import '../../constant/fonts.dart';
import '../widget/my_womengride.dart';

class WomenCollectionPage extends StatelessWidget {
  const WomenCollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Products>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              nextScreen(context, const HomePage());
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          title: Text(
            'Women (${listWomenModel.length} Items)',
            style: fontsAppbar,
          ),
          actions: [
            //button shopping
            GestureDetector(
              onTap: () => nextScreen(context, const CardPage()),
              child: Padding(
                padding: const EdgeInsets.only(right: 15, top: 15),
                child: value.cartWomen.isEmpty && value.cartMenItem.isEmpty
                    ? const Icon(
                        Icons.shopping_cart_checkout,
                        color: Colors.black,
                        size: 30,
                      )
                    : Badge(
                        label: Text(
                            '${(value.cartMenItem.length + value.cartWomen.length)}'),
                        offset: const Offset(7, -4),
                        child: const Icon(
                          Icons.shopping_cart_checkout,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
              ),
            ),
          ],
        ),
        body: const MyWomenGideWidget(),
        bottomNavigationBar: const MyBottomNavigatWidget(),
      ),
    );
  }
}
