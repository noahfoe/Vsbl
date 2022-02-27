import 'package:flutter/material.dart';
import 'package:vsbl/constants/colors.dart';

class MyListTile extends StatelessWidget {
  final String title;
  final String name;
  final String status;
  final String buttonText;
  final Color buttonColor;
  final Color buttonTextColor;
  final Icon icon;
  const MyListTile({
    Key? key,
    required this.title,
    required this.name,
    required this.status,
    required this.buttonText,
    required this.buttonColor,
    required this.buttonTextColor,
    required this.icon, // i.e. Icon(Icons(...))
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Tile for each task
    return ListTile(
      // Column for the task
      title: Column(
        // Align to the left
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Row for icon and title
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 6.95),
                child: icon,
              ),
              Text(
                title,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: MyColors.kBlack),
              ),
            ],
          ),
          // Name
          Padding(
            padding: const EdgeInsets.only(top: 3.0, left: 3.5),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: MyColors.kDarkGrey,
              ),
            ),
          ),
          // Status
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 3.5),
            child: Row(
              children: [
                Text(
                  "Status: ",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: MyColors.kDarkGrey,
                  ),
                ),
                Text(
                  status,
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
      // Button
      /*
 
      */
      trailing: SizedBox(
        width: 82,
        height: 30,
        child: TextButton(
          // ignore: avoid_returning_null_for_void
          onPressed: () => null,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
          ),
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 14,
              color: buttonTextColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
