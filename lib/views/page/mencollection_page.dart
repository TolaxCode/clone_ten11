import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_ui_project/constant/route.dart';
import 'package:shopping_ui_project/model/men_model.dart';
import 'package:shopping_ui_project/model/products.dart';
import 'package:shopping_ui_project/views/page/card_page.dart';
import 'package:shopping_ui_project/views/page/home_page.dart';
import 'package:shopping_ui_project/views/widget/my_mengrid.dart';
import '../../constant/fonts.dart';
import '../widget/my_bottomnavigat.dart';

class MenCollectionPage extends StatelessWidget {
  const MenCollectionPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<Products>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              nextScreen(context, const HomePage());
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            ),
          ),
          centerTitle: true,
          title: Text(
            'Men (${listMenModel.length} Items)',
            style: fontsAppbar,
          ),
          actions: [
            //button shopping
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () => nextScreen(context, const CardPage()),
                child: Padding(
                  padding: const EdgeInsets.only(right: 10, top: 8),
                  child: value.cartMenItem.isEmpty && value.cartWomen.isEmpty
                      ? const Icon(
                          Icons.shopping_cart_checkout,
                          color: Colors.black,
                          size: 30,
                        )
                      : Badge(
                          label: Text(
                              '${(value.cartMenItem.length + value.cartWomen.length)}'),
                          offset: const Offset(7, -8),
                          child: const Icon(
                            Icons.shopping_cart_checkout,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                ),
              ),
            ),
          ],
        ),
        //men gride
        body: const MyMenGideWidget(),
        //btn nav bar
        bottomNavigationBar: const MyBottomNavigatWidget(),
      ),
    );
  }
}
