import 'package:electrical_store_app/constants.dart';
import 'package:electrical_store_app/models/product.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.itemIndex,
    required this.product,
    required this.press,
  });

  final int itemIndex;
  final Product product;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: KDefaultPadding,
        vertical: KDefaultPadding / 2,
      ),
      height: 190.0,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 170.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 25,
                      color: Colors.black12),
                ],
              ),
            ),
            Positioned(
              top: 20.0,
              left: 0.0,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: KDefaultPadding,
                ),
                height: 160.0,
                width: 200.0,
                child: Image.asset(
                  product.image,
                ),
              ),
            ),
            Positioned(
                bottom: 0.0,
                right: 0.0,
                child: SizedBox(
                  height: 136.0,
                  width: size.width - 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: KDefaultPadding),
                        child: Text(
                          product.title,
                          style: Theme.of(context).textTheme.bodyLarge,//bodyText1
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: KDefaultPadding),
                        child: Text(
                          product.subTitle,
                          style: Theme.of(context).textTheme.bodySmall,//caption
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(KDefaultPadding),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: KDefaultPadding * 1.5 // 30 pixels
                              ,
                              vertical: KDefaultPadding / 5 //  5 pixels
                              ),
                          decoration: BoxDecoration(
                            color: KSecondaryColor,
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: Text('السعر : \$${product.price}'),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
