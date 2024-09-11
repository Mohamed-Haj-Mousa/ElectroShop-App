import 'package:electrical_store_app/constants.dart';
import 'package:electrical_store_app/models/product.dart';
import 'package:electrical_store_app/widgets/home/details/color_dot.dart';
import 'package:electrical_store_app/widgets/home/details/details_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:shimmer/shimmer.dart';

class DetailsBody extends StatelessWidget {
  final Product product;

  const DetailsBody({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding:
              const EdgeInsets.symmetric(horizontal: KDefaultPadding * 1.5),
          decoration: const BoxDecoration(
              color: KBackgroundColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ProductImage(
                  size: size,
                  image: product.image,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: KDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorDot(
                      fillColor: KTextLightColor,
                      isSelected: true,
                    ),
                    ColorDot(
                      fillColor: Colors.blue,
                      isSelected: false,
                    ),
                    ColorDot(
                      fillColor: Colors.red,
                      isSelected: false,
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: KDefaultPadding / 2),
                child: Text(
                  product.title,
                  style: Theme.of(context).textTheme.titleLarge, //headline6
                ),
              ),
              Text(
                'السعر :\$${product.price}',
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: KSecondaryColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: KDefaultPadding / 2),
            padding: const EdgeInsets.symmetric(
                horizontal: KDefaultPadding * 1.5,
                vertical: KDefaultPadding / 2),
            child: Text(
              product.description,
              style: const TextStyle(color: Colors.white, fontSize: 19.0),
            ),
          ),
        ),
        Center(
          child: Shimmer.fromColors(
            period: const Duration(seconds: 5),
            baseColor: const Color.fromARGB(255, 173, 104, 127),
            highlightColor: Colors.orangeAccent,
            child: const Text(
              'Mohamed Haj Mousa',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                letterSpacing: 1.5,
                wordSpacing: 2.0,
              ),
            ),
          ),
        )
      ],
    );
  }
}
