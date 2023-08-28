import 'package:flutter/material.dart';
import 'package:shopping_ui_project/constant/route.dart';
import 'package:shopping_ui_project/model/men_model.dart';
import 'package:shopping_ui_project/views/page/card_page.dart';
import 'package:shopping_ui_project/views/page/mencollection_page.dart';
import 'package:shopping_ui_project/views/widget/fonts.dart';
import 'package:shopping_ui_project/views/widget/my_image_color_size.dart';

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
            expandedHeight: height * 0.9, //
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
          MyImageColorSizeDesWidget(
            height: height,
            width: width,
            menModel: menModel,
            listsize: listsize,
          ),
          
        ],
      ),
       //bottomNavigatebar
       
    );
  }
}
