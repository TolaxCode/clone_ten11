import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_ui_project/constant/route.dart';
import 'package:shopping_ui_project/model/products.dart';
import 'package:shopping_ui_project/constant/fonts.dart';
import 'package:shopping_ui_project/model/women_model.dart';
import 'package:shopping_ui_project/views/page/home_page.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});
  @override
  Widget build(BuildContext context) {
    void removeProductWomen(WomenModel womenModel) {
      Provider.of<Products>(context, listen: false)
          .removeWomenItemFromCart(womenModel);
    }

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Consumer<Products>(
      builder: (context, value, child) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              onPressed: () => nextScreen(context, const HomePage()),
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30,
              ),
            ),
            centerTitle: true,
            title: Text(
              'My Shopping Bag (${value.cartMenItem.length + value.cartWomen.length})',
              style: fontsAppbar,
            ),
          ),
          body: Row(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: value.cartWomen.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.grey[300],
                      semanticContainer: true,
                      child: ListTile(
                        leading: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(value.cartWomen[index].image)),
                        title: Text(
                          value.cartWomen[index].name,
                          style: fontsNameShirt,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text(
                          '${value.cartWomen[index].price}\$',
                          style: fontsPrice,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: value.cartMenItem.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.grey[300],
                      semanticContainer: true,
                      child: ListTile(
                        leading: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(value.cartMenItem[index].image)),
                        title: Text(
                          value.cartMenItem[index].name,
                          style: fontsNameShirt,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text(
                          '${value.cartMenItem[index].price}\$',
                          style: fontsPrice,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: height * 0.09,
              width: width,
              child: CupertinoButton(
                color: Colors.black,
                //order
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //btn Order
                    Text(
                      'Order Now!',
                      style: fontsButton,
                    ),
                    //total price
                    Text(
                      '${value.calculateMenTotal() + value.calculateWomenTotal()}\$',
                      style: fontsPriceDetail,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
