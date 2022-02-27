import 'package:flutter/material.dart';
import 'package:vsbl/constants/colors.dart';

class FiltersBar extends StatelessWidget {
  const FiltersBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Filter bar
    return Container(
      decoration: BoxDecoration(
        color: MyColors.kWhite,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 12.0),
        // Scrollable filters bar
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Person filter
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: MyColors.kGrey,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: 85,
                  height: 31,
                  child: Center(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(
                            "Myself",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: MyColors.kBlack,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 2.0),
                          child: Icon(Icons.keyboard_arrow_down_sharp),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Date filter
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: MyColors.kBlack,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: 97,
                  height: 31,
                  child: Center(
                    child: Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, right: 7.0),
                          child: Icon(
                            Icons.calendar_today,
                            color: MyColors.kWhite,
                            size: 17,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: Text(
                            "1/26/22",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: MyColors.kWhite,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Sort filter (accending/decending)
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: MyColors.kBlack,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: 77,
                  height: 35,
                  child: Center(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 3.0),
                          // RotatedBox to rotate the icon 90 degrees
                          child: RotatedBox(
                            child: Icon(
                              Icons.compare_arrows_rounded,
                              color: MyColors.kWhite,
                            ),
                            quarterTurns: 1,
                          ),
                        ),
                        Text(
                          "Sort",
                          style: TextStyle(
                            color: MyColors.kWhite,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Status filter
              Container(
                decoration: BoxDecoration(
                  color: MyColors.kGrey,
                  borderRadius: BorderRadius.circular(30),
                ),
                width: 83,
                height: 31,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Status",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: MyColors.kBlack,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
