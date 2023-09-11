import 'package:flutter/material.dart';
import 'package:shopping_ui_project/constant/route.dart';
import 'package:shopping_ui_project/model/color_products_model.dart';
import 'package:shopping_ui_project/model/men_model.dart';
import 'package:shopping_ui_project/views/page/mendetail_page.dart';
import 'package:shopping_ui_project/constant/fonts.dart';

class MyMenGideWidget extends StatefulWidget {
  const MyMenGideWidget({super.key});

  @override
  State<MyMenGideWidget> createState() => _MyMenGideWidgetState();
}

class _MyMenGideWidgetState extends State<MyMenGideWidget> {
  @override
  Widget build(BuildContext context) {
    //calculate hight and width
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
        top: height * 0.01,
      ),
      child: GridView.builder(
        itemCount: listMenModel.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: width * 0.01,
          childAspectRatio: height * 0.00056,
          mainAxisSpacing: height * 0.005,
        ),
        itemBuilder: (context, index) {
          var menModel = listMenModel[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  nextScreen(
                    context,
                    MenDetailPage(
                      menModel: menModel,
                    ),
                  );
                },
                child: Hero(
                  tag: menModel.image,
                  child: Container(
                    height: height * 0.36,
                    width: width,
                    decoration: BoxDecoration(
                      //color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage(menModel.image),
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
                    //Price
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${menModel.price}\$',
                          style: fontsPrice,
                        ),
                        const Icon(Icons.bookmark_outline)
                      ],
                    ),
                    //Name Shirt
                    Text(
                      menModel.name,
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
    );
  }
}
