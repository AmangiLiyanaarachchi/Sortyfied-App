import 'package:flutter/material.dart';
import 'package:sortifyd_app/Constant/style_const.dart';

class BottomPopup extends StatefulWidget {
  final String title;

  BottomPopup({required this.title});

  @override
  _BottomPopupState createState() => _BottomPopupState();
}

class _BottomPopupState extends State<BottomPopup> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white, // Set the background color to white
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0), // Change the radius as needed
                topRight: Radius.circular(40.0), // Change the radius as needed
              ),
            ),
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                const CircleAvatar(
                  backgroundColor: kprimaryColor,
                  radius: 50.0,
                  child: Icon(
                    Icons.document_scanner,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 16),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Have ready access to your financial account credentials and other information',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 127, 124, 124),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                ListView(
                  shrinkWrap: true,
                  children: const [
                    ListTile(
                      leading: Icon(Icons.circle, size: 8),
                      title: Text(
                        'Tap + below to add a record',
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.circle, size: 8),
                      title: Text(
                          'Click. tag, and save photos of items (checks, statements, cards, etc.)'),
                    ),
                    ListTile(
                      leading: Icon(Icons.circle, size: 8),
                      title: Text('Add as much detail as you need'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
