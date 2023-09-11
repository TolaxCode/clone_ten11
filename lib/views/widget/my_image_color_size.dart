import 'package:flutter/material.dart';
import 'package:shopping_ui_project/model/color_products_model.dart';
import 'package:shopping_ui_project/model/men_model.dart';
import 'package:shopping_ui_project/constant/fonts.dart';

class MyImageColorSizeDesWidget extends StatefulWidget {
  const MyImageColorSizeDesWidget({
    super.key,
    required this.height,
    required this.width,
    required this.menModel,
  });

  final double height;
  final double width;
  final MenModel menModel;

  @override
  State<MyImageColorSizeDesWidget> createState() =>
      _MyImageColorSizeDesWidgetState();
}

//color
int currentColor = 0;
//size
int currentSize = 0;
List<String> listsize = [
  'S',
  'M',
  'L',
  'XL',
  '2XL',
];

class _MyImageColorSizeDesWidgetState extends State<MyImageColorSizeDesWidget> {
  //function select Size
  void _selectSize(int index) {
    setState(
      () {
        currentSize = index;
        listsize.length;
      },
    );
  }

  //select colors
  void _selectColors(int index) {
    setState(() {
      currentColor = index;
    });
  }

  //function sle

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
                        '${widget.menModel.price}\$',
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
                padding: EdgeInsets.only(
                  top: widget.height * 0.012,
                ),
                child: Row(
                  children: [
                    Text(
                      'Color'.toUpperCase(),
                      style: fontsTopic,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: widget.width * 0.029),
                      child: Row(
                        children: List.generate(
                          listColors.length,
                          (index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                right: widget.width * 0.02,
                              ),
                              child: Container(
                                height: widget.height * 0.04,
                                width: widget.width * 0.08,
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
              ),

              //size
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Text(
                        'Size      '.toUpperCase(),
                        style: fontsTopic,
                      ),
                    ),
                    for (int index = 0; index < listsize.length; index++)
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 10,
                        ),
                        //select size
                        child: GestureDetector(
                          onTap: () {
                            _selectSize(index);

                            print(index);
                          },
                          child: index == currentSize
                              ? Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
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
                                      listsize[index],
                                      style: fontsNameShirtDetail,
                                    ),
                                  ),
                                )
                              : Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
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
                                      listsize[index],
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //description
                    Text(
                      'Description'.toUpperCase(),
                      style: fontsTopic,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.menModel.des,
                      style: fontsDesCom,
                    ),
                  ],
                ),
              ),
              //Composition
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Composition'.toUpperCase(),
                      style: fontsTopic,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.menModel.composition,
                      style: fontsDesCom,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
