import 'package:electrical_store_app/constants.dart';
import 'package:electrical_store_app/widgets/home/home_body.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      appBar: homeAppBar(),
      body: const HomeBody(),

    );
  }

  AppBar homeAppBar() {
    return AppBar(
      backgroundColor: KPrimaryColor,
      elevation: 0,
      title: Text(
        "مرحبا بكم بمتجر الالكترونيات",
        style: GoogleFonts.getFont('Almarai',
            fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      centerTitle: false,
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ))
      ],
    );
  }
}
