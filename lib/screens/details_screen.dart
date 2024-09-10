import 'package:electrical_store_app/constants.dart';
import 'package:electrical_store_app/models/product.dart';
import 'package:electrical_store_app/widgets/home/details/details_body.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      appBar: detailsAppBar(context),
      body: DetailsBody(
        product: product,
      ),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: KBackgroundColor,
      elevation: 0.0,
      leading: IconButton(
          padding: const EdgeInsets.only(right: KDefaultPadding),
          icon: const Icon(
            Icons.arrow_back,
            color: KPrimaryColor,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          }),
      centerTitle: false,
      title: Text(
        'رجوع',
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 22),
      ),
    );
  }
}
