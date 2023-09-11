import 'package:flutter/material.dart';
import 'package:shopping_ui_project/model/men_model.dart';
import 'package:shopping_ui_project/model/women_model.dart';

class MyGridHighlightWidget extends StatelessWidget {
  const MyGridHighlightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
        top: height * 0.01,
        left: width * 0.03,
        right: width * 0.03,
      ),
      child: SizedBox(
        height: height,
        child: GridView.builder(
          itemCount: 20,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: width * 0.03,
            childAspectRatio: height * 0.0006,
            mainAxisSpacing: height * 0.015,
          ),
          itemBuilder: (context, index) {
            var data = listMenModel[index];
            var data1 = listWomenModel[index];
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height * 0.28,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                      image: index <= 3
                          ? AssetImage(data1.image)
                          : AssetImage(data.image.toString()),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                index <= 3
                    ? Text(
                        'US \$${data1.price}',
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.pink,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    : Text(
                        'US \$${data.price}',
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.pink,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                //Name
                index <= 3
                    ? Text(
                        data1.name,
                        style: const TextStyle(fontSize: 17),
                      )
                    : Text(
                        data.name.toString(),
                        style: const TextStyle(fontSize: 17),
                      ),
                Row(
                  children: [
                    //color
                    Padding(
                      padding: EdgeInsets.only(
                        right: width * 0.02,
                      ),
                      child: Container(
                        height: height * 0.025,
                        width: width * 0.06,
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
                        height: height * 0.025,
                        width: width * 0.06,
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
                        height: height * 0.025,
                        width: width * 0.06,
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
                        height: height * 0.025,
                        width: width * 0.06,
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
              ],
            );
          },
        ),
      ),
    );
  }
}
