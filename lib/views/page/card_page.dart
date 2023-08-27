import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_ui_project/constant/route.dart';
import 'package:shopping_ui_project/model/men_model.dart';
import 'package:shopping_ui_project/views/page/mendetail_page.dart';
import 'package:shopping_ui_project/views/widget/fonts.dart';
class CardPage extends StatelessWidget {
  MenModel menModel;
  CardPage({
    super.key,
    required this.menModel,
  });



  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  //Button Back to MenDetailPage
                  IconButton(
                    onPressed: () {
                      nextScreen(
                        context,
                        MenDetailPage(
                          menModel: menModel,
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                  Text(
                    'My Shopping Bag ()',
                    style: fontsListTile,
                  )
                ],
              ),
              SizedBox(
                height: height,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Row(
                        children: [
                          Container(
                            width: width / 3,
                            height: height * 0.2,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(menModel.image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: width * 0.03,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  menModel.name,
                                  style: fontDrawer,
                                ),
                                Text(
                                  'Price  : ${menModel.price}\$',
                                  style: fontsPrice,
                                ),
                                Text(
                                  'Color : Brown',
                                  style: fontDrawer,
                                ),
                                Text(
                                  'Size : M',
                                  style: fontDrawer,
                                ),
                                Text(
                                  'Qty: 1',
                                  style: fontDrawer,
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: width,
        height: height * 0.09,
        child: Column(
          children: [
            SizedBox(
              height: height * 0.08,
              width: width * 0.95,
              child: CupertinoButton(
                color: Colors.black,
                //order
                onPressed: () {
                  nextScreen(
                    context,
                    CardPage(
                      menModel: menModel,
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Order',
                      style: fontsListTile,
                    ),
                    Text(
                      ' ${menModel.price}\$ ',
                      style: fontsListTile,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
