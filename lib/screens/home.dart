import 'package:flutter/material.dart';
import 'package:vsbl/constants/colors.dart';
import 'package:vsbl/widgets/myappbar.dart';
import 'package:vsbl/widgets/homebody.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.kBackgroundGrey,
      // AppBar with bigger than default size
      appBar: const PreferredSize(
        preferredSize: Size(375, 75),
        child: MyAppBar(),
      ),
      // Body of the home screen
      body: const HomeBody(),
      // FAB in the middle of the BottomNavBar
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: Container(
          decoration: BoxDecoration(
            color: MyColors.kWhite,
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: FloatingActionButton(
            elevation: 0, // No shadow
            backgroundColor: MyColors.kPurple,
            // ignore: avoid_returning_null_for_void
            onPressed: () => null,
            child: Icon(
              Icons.add,
              size: 35,
              color: MyColors.kWhite,
            ),
          ),
        ),
      ),

      // This line makes the FAB float in the bottom center of the screen
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
