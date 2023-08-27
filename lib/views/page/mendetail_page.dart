import 'package:flutter/material.dart';
import 'package:shopping_ui_project/constant/route.dart';
import 'package:shopping_ui_project/model/men_model.dart';
import 'package:shopping_ui_project/views/page/card_page.dart';
import 'package:shopping_ui_project/views/page/mencollection_page.dart';
import 'package:shopping_ui_project/views/widget/fonts.dart';

class MenDetailPage extends StatelessWidget {
  MenModel menModel;
  MenDetailPage({
    super.key,
    required this.menModel,
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
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white, //color app bar
            stretch: true,
            expandedHeight: 700, //
            leadingWidth: width,
            elevation: 0,
            pinned: true,
            leading: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () =>
                      nextScreen(context, const MenCollectionPage()),
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () => nextScreen(
                      context,
                      CardPage(
                        menModel: menModel,
                      )),
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
                tag: menModel.image,
                child: Image.asset(
                  menModel.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          //detail price name size color
          SliverToBoxAdapter(
            child: Container(
              height: 1000,
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
                        Text(
                          menModel.name,
                          style: fontsNameShirtDetail,
                        ),
                        Row(
                          children: [
                            Text(
                              '\$ ${menModel.price}',
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
                    //Description

                    //colors
                    Row(
                      children: [
                        for (int i = 0; i < 5; i++)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(),
                              ),
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                    Row(
                      children: [
                        for (int i = 0; i < 5; i++)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(2),
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(),
                              ),
                              child: const Text('M'),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
