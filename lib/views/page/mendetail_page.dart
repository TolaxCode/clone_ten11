import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shopping_ui_project/constant/route.dart';

import 'package:shopping_ui_project/model/men_model.dart';
import 'package:shopping_ui_project/model/products.dart';

import 'package:shopping_ui_project/views/page/card_page.dart';
import 'package:shopping_ui_project/views/page/mencollection_page.dart';
import 'package:shopping_ui_project/constant/fonts.dart';
import 'package:shopping_ui_project/views/widget/my_image_color_size.dart';

class MenDetailPage extends StatelessWidget {
  MenModel menModel;
  MenDetailPage({
    super.key,
    required this.menModel,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: unused_element
    void addProudctMenToCart(MenModel menModel) {
      Provider.of<Products>(context, listen: false).addMenItemToCart(menModel);
      showMessageSuccess(context);
    }

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Consumer<Products>(
      builder: (context, value, child) => Scaffold(
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
                    onPressed: () =>
                        nextScreen(context, const MenCollectionPage()),
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  //button shopping

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () => nextScreen(context, const CardPage()),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child:
                            value.cartWomen.isEmpty && value.cartMenItem.isEmpty
                                ? const Icon(
                                    Icons.shopping_cart_checkout,
                                    color: Colors.black,
                                    size: 30,
                                  )
                                : Badge(
                                    label: Text(
                                        '${(value.cartMenItem.length + value.cartWomen.length)}'),
                                    offset: const Offset(7, -8),
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
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Hero(
                  tag: menModel.image,
                  child: Image.asset(
                    menModel.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            //detail price name size color
            MyImageColorSizeDesWidget(
              height: height,
              width: width,
              menModel: menModel,
            ),
          ],
        ),
        //bottomNavigatebar
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          //btn add to bag
          child: Container(
            height: height * 0.09,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: CupertinoButton(
              color: Colors.black,
              onPressed: () {
                addProudctMenToCart(menModel);
              },
              child: Text(
                'Add To Bag',
                style: fontsButton,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
