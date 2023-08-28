import 'package:flutter/material.dart';
import 'package:shopping_ui_project/model/men_model.dart';
import 'package:shopping_ui_project/views/widget/fonts.dart';

class MyImageColorSizeDesWidget extends StatefulWidget {
  const MyImageColorSizeDesWidget({
    super.key,
    required this.height,
    required this.width,
    required this.menModel,
    required this.listsize,
  });

  final double height;
  final double width;
  final MenModel menModel;
  final List listsize;

  @override
  State<MyImageColorSizeDesWidget> createState() =>
      _MyImageColorSizeDesWidgetState();
}

int currentSize = 0;

class _MyImageColorSizeDesWidgetState extends State<MyImageColorSizeDesWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: widget.height * 0.55, //size of detail
        width: widget.width,
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
                    widget.menModel.name,
                    style: fontsNameShirtDetail,
                  ),
                  Row(
                    children: [
                      //price
                      Text(
                        '\$${widget.menModel.price}',
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
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        'Colors ',
                        style: fontsTopic,
                      ),
                    ),
                    //color
                    Padding(
                      padding: EdgeInsets.only(
                        right: widget.width * 0.02,
                      ),
                      child: Container(
                        height: widget.height * 0.038,
                        width: widget.width * 0.08,
                        decoration: BoxDecoration(
                          color: widget.menModel.color,
                          border: widget.menModel.color == null
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
                        right: widget.width * 0.02,
                      ),
                      child: Container(
                        height: widget.height * 0.038,
                        width: widget.width * 0.08,
                        decoration: BoxDecoration(
                          color: widget.menModel.color1,
                          border: widget.menModel.color1 == null
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
                        right: widget.width * 0.02,
                      ),
                      child: Container(
                        height: widget.height * 0.038,
                        width: widget.width * 0.08,
                        decoration: BoxDecoration(
                          color: widget.menModel.color2,
                          border: widget.menModel.color2 == null
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
                        right: widget.width * 0.02,
                      ),
                      child: Container(
                        height: widget.height * 0.038,
                        width: widget.width * 0.08,
                        decoration: BoxDecoration(
                          color: widget.menModel.color3,
                          border: widget.menModel.color3 == null
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
              //size
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        'Size      ',
                        style: fontsTopic,
                      ),
                    ),
                    for (int i = 0; i < 5; i++)
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 10,
                        ),
                        //
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              currentSize = i;
                            });
                          },
                          child: currentSize == i
                              ? Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(5),
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
                                      widget.listsize[i],
                                      style: fontsNameShirtDetail,
                                    ),
                                  ),
                                )
                              : Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
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
                                      widget.listsize[i],
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
                child: Container(
                  // height: height * 0.1,
                  // width: width,
                  //color: Colors.blue,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description',
                        style: fontsTopic,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        widget.menModel.des,
                        style: fontsNameShirt,
                      ),
                    ],
                  ),
                ),
              ),
              //Composition
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  // height: height * 0.1,
                  // width: width,
                  //color: Colors.blue,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Composition',
                        style: fontsTopic,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        widget.menModel.composition,
                        style: fontsNameShirt,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
