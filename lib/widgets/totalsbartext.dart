import 'package:flutter/material.dart';
import 'package:vsbl/constants/colors.dart';

class TotalsBarText extends StatelessWidget {
  final String top;
  final String bottom;
  const TotalsBarText({Key? key, required this.top, required this.bottom})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Fixed size for each total
    return SizedBox(
      width: 72,
      height: 42,
      // Column for top text and bottom text
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Top text
          Text(
            top,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: MyColors.kPurple,
            ),
          ),
          // Bottom text
          Text(
            bottom,
            style: TextStyle(
              color: MyColors.kBlack,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
