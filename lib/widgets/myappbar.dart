import 'package:flutter/material.dart';
import 'package:vsbl/constants/colors.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: MyColors.kWhite,
      title: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Image.asset(
          "assets/imgs/logo.png",
          scale: 8,
        ),
      ),
    );
  }
}
