import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_ui_project/model/women_model.dart';
import 'package:shopping_ui_project/views/widget/fonts.dart';

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
          itemCount: listWowmenModel.length,
          shrinkWrap: true,
          //physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: width * 0.01,
            childAspectRatio: height * 0.00055,
            mainAxisSpacing: height * 0.005,
          ),
          itemBuilder: (context, index) {
            var data = listWowmenModel[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
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
                Padding(
                  padding: EdgeInsets.only(
                    left: width * 0.02,
                    top: height * 0.01,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: width * 0.02,
                        ),
                        child: Text(
                          '\$${data.price}',
                          style: fontsPrice,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: height * 0.009,
                          left: width * 0.02,
                        ),
                        child: Text(
                          data.name,
                          style: fontsNameShirt,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: height * 0.015,
                          left: width * 0.019,
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
