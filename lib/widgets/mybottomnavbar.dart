import 'package:flutter/material.dart';
import 'package:vsbl/constants/colors.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73,
      // Shadow above the bottom nav bar
      decoration: BoxDecoration(
        color: MyColors.kWhite,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // Shadow offset
          ),
        ],
      ),
      // Row that contains 2 rows, with space for the FAB in the middle
      child: Row(
        children: [
          // Row with To-Do and Menu
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Column for To-Do
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add_task,
                      color: MyColors.kLighterGrey,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        "To-Do",
                        style: TextStyle(
                          color: MyColors.kLighterGrey,
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                // Column for Menu
                Padding(
                  padding: const EdgeInsets.only(right: 35.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.menu, color: MyColors.kBlack),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text(
                          "Menu",
                          style: TextStyle(
                            color: MyColors.kLighterGrey,
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Row with Notification and Profile
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Stack used for indicator of 5 pending notifications
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      // Column for Notifications
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Icon(
                              Icons.notifications_none_outlined,
                              size: 30,
                              color: MyColors.kLighterGrey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Text(
                              "Notifications",
                              style: TextStyle(
                                color: MyColors.kLighterGrey,
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Pending notifications count - Positioned to top right of icon
                    Positioned(
                      left: 54,
                      bottom: 43,
                      child: Container(
                        width: 19,
                        height: 19,
                        decoration: BoxDecoration(
                          color: MyColors.kRed,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            "5",
                            style: TextStyle(
                              color: MyColors.kWhite,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Column for Profile
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 14.0),
                        // Circular profile picture
                        child: Container(
                          width: 27,
                          height: 27,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/imgs/headshot.jpg'),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text(
                          "Profile",
                          style: TextStyle(
                            color: MyColors.kLighterGrey,
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
