import 'package:flutter/material.dart';
import 'package:shopping_ui_project/constant/route.dart';
import 'package:shopping_ui_project/model/men_model.dart';
import 'package:shopping_ui_project/views/page/mendetail_page.dart';
import 'package:shopping_ui_project/views/widget/fonts.dart';

class MyMenGideWidget extends StatefulWidget {
  const MyMenGideWidget({
    super.key,
  });

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
      child: SizedBox(
        height: height,
        child: GridView.builder(
          itemCount: listMenModel.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: width * 0.01,
            childAspectRatio: height * 0.00058,
            mainAxisSpacing: height * 0.005,
          ),
          itemBuilder: (context, index) {
            var data = listMenModel[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    nextScreen(
                      context,
                      MenDetailPage(
                        menModel: data,
                      ),
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
                    top: height * 0.01,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Price
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 4,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$${data.price}',
                              style: fontsPrice,
                            ),
                            const Icon(Icons.bookmark_outline)
                          ],
                        ),
                      ),
                      //Name Shirt
                      Padding(
                        padding: EdgeInsets.only(
                          top: height * 0.009,
                          left: width * 0.015,
                        ),
                        child: Text(
                          data.name,
                          style: fontsNameShirt,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      //Color
                      Padding(
                        padding: EdgeInsets.only(
                          top: height * 0.015,
                          left: width * 0.015,
                        ),
                        child: Row(
                          children: [
                            //color
                            Padding(
                              padding: EdgeInsets.only(
                                right: width * 0.02,
                              ),
                              child: Container(
                                height: height * 0.024,
                                width: width * 0.053,
                                decoration: BoxDecoration(
                                  color: data.color,
                                  border: data.color == null
                                      ? null
                                      : Border.all(
                                          width: 1,
                                          color: Colors.black26,
                                        ),
                                ),
                              ),
                            ),
                            //color1
                            Padding(
                              padding: EdgeInsets.only(
                                right: width * 0.02,
                              ),
                              child: Container(
                                height: height * 0.024,
                                width: width * 0.053,
                                decoration: BoxDecoration(
                                  color: data.color1,
                                  border: data.color1 == null
                                      ? null
                                      : Border.all(
                                          width: 1,
                                          color: Colors.black26,
                                        ),
                                ),
                              ),
                            ),
                            //color2
                            Padding(
                              padding: EdgeInsets.only(
                                right: width * 0.02,
                              ),
                              child: Container(
                                height: height * 0.024,
                                width: width * 0.053,
                                decoration: BoxDecoration(
                                  color: data.color2,
                                  border: data.color2 == null
                                      ? null
                                      : Border.all(
                                          width: 1,
                                          color: Colors.black26,
                                        ),
                                ),
                              ),
                            ),
                            //color3
                            Padding(
                              padding: EdgeInsets.only(
                                right: width * 0.02,
                              ),
                              child: Container(
                                height: height * 0.024,
                                width: width * 0.053,
                                decoration: BoxDecoration(
                                  color: data.color3,
                                  border: data.color3 == null
                                      ? null
                                      : Border.all(
                                          width: 1,
                                          color: Colors.black26,
                                        ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
