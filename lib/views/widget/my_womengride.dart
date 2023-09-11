import 'package:flutter/material.dart';
import 'package:shopping_ui_project/constant/route.dart';
import 'package:shopping_ui_project/model/color_products_model.dart';
import 'package:shopping_ui_project/model/women_model.dart';
import 'package:shopping_ui_project/views/page/womendetail_page.dart';
import 'package:shopping_ui_project/constant/fonts.dart';

class MyWomenGideWidget extends StatelessWidget {
  const MyWomenGideWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
        top: height * 0.01,
      ),
      child: SizedBox(
        height: height,
        child: GridView.builder(
          itemCount: listWomenModel.length,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: width * 0.01,
            childAspectRatio: height * 0.00055,
            mainAxisSpacing: height * 0.005,
          ),
          itemBuilder: (context, index) {
            var data = listWomenModel[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //image
                GestureDetector(
                  onTap: () {
                    nextScreen(
                      context,
                      WomenDetailPage(wowmenModel: data),
                    );
                  },
                  child: Hero(
                    tag: data.image,
                    child: Container(
                      height: height * 0.36,
                      width: width,
                      decoration: BoxDecoration(
                        //color: Colors.red,
                        image: DecorationImage(
                          image: AssetImage(data.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: width * 0.02,
                    top: height * 0.009,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$${data.price}',
                            style: fontsPrice,
                          ),
                          const Icon(Icons.bookmark_border)
                        ],
                      ),
                      Text(
                        data.name,
                        style: fontsNameShirt,
                        overflow: TextOverflow.ellipsis,
                      ),
                      //Color
                      Padding(
                        padding: EdgeInsets.only(
                          top: height * 0.009,
                        ),
                        child: Row(
                          children: List.generate(
                            listColors.length,
                            (index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                  right: width * 0.02,
                                ),
                                child: Container(
                                  height: height * 0.024,
                                  width: width * 0.053,
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
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
