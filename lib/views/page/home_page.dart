import 'package:flutter/material.dart';
import 'package:shopping_ui_project/constant/route.dart';
import 'package:shopping_ui_project/views/page/womencollection_page.dart';
import 'package:shopping_ui_project/views/widget/my_drawer.dart';
import '../widget/my_bottomnavigat.dart';
import '../widget/my_collection.dart';
import '../widget/my_imageslide.dart';
import 'mencollection_page.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: globalKey,
      drawer: const Drawer(
        // backgroundColor: Color(0xFFe7ded7),
        //Drawer
        child: MyDrawerWidget(),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    //Button Menu
                    IconButton(
                      onPressed: () {
                        globalKey.currentState!.openDrawer();
                      },
                      icon: const Icon(
                        Icons.menu_outlined,
                        size: 30,
                      ),
                    ),
                    //logo ten11
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.3),
                      child: Container(
                        height: 30,
                        width: 70,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/image/TEN11.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomNavigatWidget(),
    );
  }
}
