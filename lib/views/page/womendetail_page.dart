// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_ui_project/constant/route.dart';
import 'package:shopping_ui_project/model/color_products_model.dart';

import 'package:shopping_ui_project/model/products.dart';
import 'package:shopping_ui_project/model/women_model.dart';
import 'package:shopping_ui_project/views/page/card_page.dart';
import 'package:shopping_ui_project/views/page/womencollection_page.dart';
import 'package:shopping_ui_project/constant/fonts.dart';
import 'package:shopping_ui_project/views/widget/my_image_color_size.dart';

class WomenDetailPage extends StatelessWidget {
  WomenModel wowmenModel;
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
    void addProudctWomenToCart(WomenModel womenModel) {
      Provider.of<Products>(context, listen: false)
          .addWomenItemToCart(womenModel);
      //show dialog
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
                        nextScreen(context, const WomenCollectionPage()),
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  //button shopping
                  GestureDetector(
                    onTap: () => nextScreen(context, const CardPage()),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
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
                                  offset: const Offset(0, -4),
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
            SliverToBoxAdapter(
              child: Container(
                height: height * 0.55, //size of detail
                width: width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //name shirt
                          Text(
                            wowmenModel.name,
                            style: fontsNameShirtDetail,
                          ),
                          Row(
                            children: [
                              //price
                              Text(
                                '${wowmenModel.price}\$',
                                style: fontsPriceDetail,
                              ),
                              const Icon(
                                Icons.bookmark_border,
                                size: 30,
                              )
                            ],
                          )
                        ],
                      ),
                      //Color
                      Padding(
                        padding: EdgeInsets.only(
                          top: height * 0.012,
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Color'.toUpperCase(),
                              style: fontsTopic,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: width * 0.029),
                              child: Row(
                                children: List.generate(
                                  listColors.length,
                                  (index) {
                                    return Padding(
                                      padding: EdgeInsets.only(
                                        right: width * 0.02,
                                      ),
                                      child: Container(
                                        height: height * 0.04,
                                        width: width * 0.08,
                                        decoration: BoxDecoration(
                                          color: listColors[index],
                                          border: Border.all(
                                            color: Colors.black26,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //size
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Text(
                                'Size      '.toUpperCase(),
                                style: fontsTopic,
                              ),
                            ),
                            for (int index = 0;
                                index < listsize.length;
                                index++)
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 10,
                                ),
                                //select size
                                child: GestureDetector(
                                  onTap: () {
                                    print(index);
                                  },
                                  child: index == currentSize
                                      ? Container(
                                          alignment: Alignment.center,
                                          padding: const EdgeInsets.all(2),
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                            border: Border.all(
                                              width: 1.5,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10,
                                            ),
                                            child: Text(
                                              listsize[index],
                                              style: fontsNameShirtDetail,
                                            ),
                                          ),
                                        )
                                      : Container(
                                          alignment: Alignment.center,
                                          padding: const EdgeInsets.all(2),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1.5,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10,
                                            ),
                                            child: Text(
                                              listsize[index],
                                              style: fontsNameShirtDetail,
                                            ),
                                          ),
                                        ),
                                ),
                              ),
                          ],
                        ),
                      ),

                      //Description
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //description
                            Text(
                              'Description'.toUpperCase(),
                              style: fontsTopic,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              wowmenModel.des,
                              style: fontsNameShirt,
                            ),
                          ],
                        ),
                      ),
                      //Composition
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Composition'.toUpperCase(),
                              style: fontsTopic,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              wowmenModel.composition,
                              style: fontsNameShirt,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        //bottomNavigatebar
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          //btn add to bag
          child: GestureDetector(
            onTap: () {
              addProudctWomenToCart(wowmenModel);
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
      ),
    );
  }
}
