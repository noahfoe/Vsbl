import 'package:flutter/material.dart';
import 'package:vsbl/constants/colors.dart';
import 'package:vsbl/widgets/totalsbartext.dart';

class TotalsBar extends StatelessWidget {
  const TotalsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Totals bar at the top of the screen
    return Container(
      width: 352,
      height: 62,
      // Make it rounded
      decoration: BoxDecoration(
        color: MyColors.kWhite,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      // Row for the totals
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: TotalsBarText(top: "70%", bottom: "Completion"),
          ),
          // Thin vertical divider between each total
          VerticalDivider(
            color: MyColors.kLightGrey,
            thickness: 1,
            indent: 17,
            endIndent: 17,
          ),
          const TotalsBarText(top: "+5", bottom: "Points"),
          VerticalDivider(
            color: MyColors.kLightGrey,
            thickness: 1,
            indent: 17,
            endIndent: 17,
          ),
          const TotalsBarText(top: "1/2", bottom: "Tasks"),
          VerticalDivider(
            color: MyColors.kLightGrey,
            thickness: 1,
            indent: 17,
            endIndent: 17,
          ),
          const TotalsBarText(top: "1/2", bottom: "Checklists"),
        ],
      ),
    );
  }
}
