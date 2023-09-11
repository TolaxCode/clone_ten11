import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_ui_project/constant/route.dart';
import 'package:shopping_ui_project/model/products.dart';
import 'package:shopping_ui_project/views/page/card_page.dart';
import 'package:shopping_ui_project/views/page/womencollection_page.dart';

import '../widget/my_bottomnavigat.dart';
import '../widget/my_collection.dart';
import '../widget/my_imageslide.dart';
import 'mencollection_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Products>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          //btn notification
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_active_outlined,
              color: Colors.black,
              size: 30,
            ),
          ),
          centerTitle: true,
          title: //logo ten11
              Container(
            height: 30,
            width: 70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/TEN11.png'),
              ),
            ),
          ),
          //btn bag
          actions: [
            //button shopping
            Padding(
              padding: const EdgeInsets.only(right: 8, top: 5),
              child: GestureDetector(
                onTap: () => nextScreen(context, const CardPage()),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: value.cartMenItem.isEmpty && value.cartWomen.isEmpty
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
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Image Silde Show
              MyImageSlideWidget(),
              //Collection
              Row(
                children: [
                  //Women Collection
                  MyCollectionWidget(
                    imageCollection: 'assets/image/women.jpg',
                    textCollection: 'Women Collection',
                    onTap: () {
                      nextScreen(context, const WomenCollectionPage());
                    },
                  ),
                  //Men Collection
                  MyCollectionWidget(
                    imageCollection: 'assets/image/men.jpg',
                    textCollection: 'Men Collection',
                    onTap: () {
                      nextScreen(context, const MenCollectionPage());
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        //btn nav
        bottomNavigationBar: const MyBottomNavigatWidget(),
      ),
    );
  }
}
