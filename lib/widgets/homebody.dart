import 'package:flutter/material.dart';
import 'package:vsbl/constants/colors.dart';
import 'package:vsbl/widgets/filtersbar.dart';
import 'package:vsbl/widgets/mybottomnavbar.dart';
import 'package:vsbl/widgets/mylisttile.dart';
import 'package:vsbl/widgets/totalsbar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Body of the home screen
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 13, right: 14),
          child: Column(
            children: [
              // Totals Bar
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 19),
                child: Center(
                  child: TotalsBar(),
                ),
              ),
              // Horizontally scrollable filter Bar
              const FiltersBar(),
              Container(
                color: MyColors.kWhite,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 21.0, right: 21.0, bottom: 13.0, top: 1.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "4 tasks",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: MyColors.kDarkGrey,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Clear filters",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: MyColors.kDarkGrey,
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        // Tasks List
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 13.0, right: 14.0),
            child: Container(
              color: MyColors.kWhite,
              child: ListView(
                children: [
                  MyListTile(
                    title: "FOH DT Expo Mid",
                    name: "Scott Huffman",
                    status: "0%",
                    buttonText: "Start",
                    buttonColor: MyColors.kGreen,
                    buttonTextColor: MyColors.kWhite,
                    icon: Icon(
                      Icons.checklist,
                      color: MyColors.kGreen,
                    ),
                  ),
                  // Horizontal divider between each task
                  Divider(
                    thickness: 0, // thickness: 0 == 1px
                    indent: 12,
                    endIndent: 12,
                    color: MyColors.kGrey,
                  ),
                  MyListTile(
                    title: "FOH DT Expo Mid",
                    name: "Scott Huffman",
                    status: "60%",
                    buttonText: "Continue",
                    buttonColor: MyColors.kOrange,
                    buttonTextColor: MyColors.kWhite,
                    icon: Icon(
                      Icons.add_task,
                      color: MyColors.kOrange,
                    ),
                  ),
                  Divider(
                    thickness: 0,
                    indent: 12,
                    endIndent: 12,
                    color: MyColors.kGrey,
                  ),
                  MyListTile(
                    title: "Safe Count: Close",
                    name: "Scott Huffman",
                    status: "Complete",
                    buttonText: "View",
                    buttonColor: MyColors.kLightPurple,
                    buttonTextColor: MyColors.kPurple,
                    icon: Icon(
                      Icons.fact_check_outlined,
                      color: MyColors.kGreen,
                    ),
                  ),
                  Divider(
                    thickness: 0,
                    indent: 12,
                    endIndent: 12,
                    color: MyColors.kGrey,
                  ),
                  MyListTile(
                    title: "Replace Lightbulb",
                    name: "Scott Huffman",
                    status: "Complete",
                    buttonText: "View",
                    buttonColor: MyColors.kLightPurple,
                    buttonTextColor: MyColors.kPurple,
                    icon: Icon(
                      Icons.add_task,
                      color: MyColors.kLighterGrey,
                    ),
                  ),
                  // Horizontal divider after last task
                  Divider(
                    thickness: 0,
                    indent: 12,
                    endIndent: 12,
                    color: MyColors.kGrey,
                  ),
                ],
              ),
            ),
          ),
        ),
        // Bottom Navigation Bar built into homescreen so the FAB can stack over the tasks section
        const MyBottomNavBar(),
      ],
    );
  }
}
