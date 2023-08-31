import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shopping_ui_project/constant/route.dart';
import 'package:shopping_ui_project/model/men_model.dart';
import 'package:shopping_ui_project/model/products.dart';
import 'package:shopping_ui_project/model/women_model.dart';

import 'package:shopping_ui_project/views/page/card_page.dart';

import 'package:shopping_ui_project/views/page/womencollection_page.dart';
import 'package:shopping_ui_project/constant/fonts.dart';

class WomenDetailPage extends StatelessWidget {
  WowmenModel wowmenModel;
  WomenDetailPage({
    super.key,
    required this.wowmenModel,
  });

  List listsize = [
    'S',
    'M',
    'L',
    'XL',
    '2XL',
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: unused_element
    void addProudctMenToCart(MenModel menModel) {
      Provider.of<Products>(context, listen: false).addMenItemToCart(menModel);
      print('Sucessfull');
    }

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white, //color app bar
            stretch: true,
            expandedHeight: height * 0.8, //
            leadingWidth: width,
            elevation: 0,
            pinned: true,
            leading: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //button back
                IconButton(
                  onPressed: () => nextScreen(context, WomenCollectionPage()),
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
                //button shopping
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ],
            ),
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: Hero(
                tag: wowmenModel.image,
                child: Image.asset(
                  wowmenModel.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          //detail price name size color
          // MyImageColorSizeDesWidget(
          //   height: height,
          //   width: width,
          //   wowmenModel: wowmenModel,
          //   listsize: listsize,
          // ),
        ],
      ),
      //bottomNavigatebar
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        //btn add to bag
        child: GestureDetector(
          onTap: () {
            
          },
          child: Container(
            alignment: Alignment.center,
            height: height * 0.09,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),
            child: Text(
              'Add To Bag',
              style: fontsButton,
            ),
          ),
        ),
      ),
    );
  }
}
