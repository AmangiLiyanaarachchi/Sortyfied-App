import 'package:flutter/material.dart';
import 'package:sortifyd_app/Constant/style_const.dart';

class CustomPopUpDialog extends StatelessWidget {
  final String title;
  final String text;

  CustomPopUpDialog({required this.title ,required this.text});

  final List<String> items = [
    'Tap + below to add a record',
    'Click. tag, and save photos of items (checks, statements, cards, etc.)',
    'Add as much detail as you need',
  ];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide(color: kprimaryColor, width: 2.0), // Add the kprimaryColor border to the dialog
      ),
      titlePadding: EdgeInsets.all(0),
      contentPadding: EdgeInsets.all(16),
      title: Container(
        padding: EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 4), // Add left and right padding
        decoration: BoxDecoration(
          color: kprimaryColor, // Use kprimaryColor for the header background
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8.0),
            topRight: Radius.circular(8.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items to the right and left
          children: [
            Text(
              title, // Use the provided title
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.lightbulb_outline,
              color: Colors.black,
            ),
          ],
        ),
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align children vertically at the top
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          if (items.isNotEmpty)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: items
                  .map((item) => Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: CircleAvatar(
                        radius: 2,
                        backgroundColor: Colors.black,
                      ),
                    ),
                    SizedBox(width: 8),
                    Flexible(
                      child: Text(
                        item,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                ],
              ),
                  ))
                  .toList(),
            ),
        ],
      ),
    );
  }
}
