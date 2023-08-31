// ignore_for_file: no_leading_underscores_for_local_identifiers
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_ui_project/constant/route.dart';
import 'package:shopping_ui_project/model/men_model.dart';
import 'package:shopping_ui_project/model/products.dart';
import 'package:shopping_ui_project/views/page/mencollection_page.dart';
import 'package:shopping_ui_project/constant/fonts.dart';
import 'package:shopping_ui_project/views/widget/my_image_color_size.dart';

class CardPage extends StatelessWidget {
  MenModel menModel;
  CardPage({super.key, required this.menModel});
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Consumer<Products>(
      builder: (context, value, child) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              onPressed: () => nextScreen(
                context,
                const MenCollectionPage(),
              ),
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30,
              ),
            ),
            centerTitle: true,
            title: Text(
              'My Shopping Bag (${value.cartMenItem.length})',
              style: fontsAppbar,
            ),
          ),
          body: SizedBox(
            height: height,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: value.cartMenItem.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.grey.shade300,
                  child: Row(
                    children: [
                      //Image
                      Container(
                        width: width / 3.7,
                        height: height * 0.2,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              value.cartMenItem[index].image,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.026),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //name
                            Text(
                              value.cartMenItem[index].name,
                              style: fontsNameShirtDetail,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Price   : ',
                                  style: fontsNameShirtDetail,
                                ),
                                Text(
                                  '${value.cartMenItem[index].price}\$',
                                  style: fontsPrice,
                                ),
                              ],
                            ),
                            //Color
                            Text(
                              'Color  : Black',
                              style: fontsNameShirtDetail,
                            ),
                            //Size

                            Text(
                              'Size     : ${listsize[currentSize]}',
                              style: fontsNameShirtDetail,
                            ),
                            //Qty
                            Text(
                              'Qty      : 1',
                              style: fontsNameShirtDetail,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: height * 0.09,
              width: width,
              child: CupertinoButton(
                color: Colors.black,
                //order
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //btn Order
                    Text(
                      'Order Now!',
                      style: fontsButton,
                    ),
                    //total price
                    Text(
                      '${value.calculateMenTotal(menModel)}\$',
                      style: fontsPriceDetail,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
