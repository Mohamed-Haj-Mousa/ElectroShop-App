import 'package:electrical_store_app/constants.dart';
import 'package:electrical_store_app/models/product.dart';
import 'package:electrical_store_app/screens/details_screen.dart';
import 'package:electrical_store_app/widgets/home/product_cart.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          const SizedBox(
            height: KDefaultPadding / 2,
          ),
          Expanded(
              child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 70),
                decoration: const BoxDecoration(
                  color: KBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
              ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                        itemIndex: index,
                        product: products[index],
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                  product: products[index],
                                ),
                              ));
                        },
                      ))
            ],
          ))
        ],
      ),
    );
  }
}
