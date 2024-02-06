import 'package:flutter/material.dart';
import 'package:sortifyd_app/Constant/style_const.dart';

class InterestsPopup extends StatefulWidget {
  final String title;

  InterestsPopup({required this.title});

  @override
  _InterestsPopupState createState() => _InterestsPopupState();
}

class _InterestsPopupState extends State<InterestsPopup> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 500,
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
                    'Add all your recipes and organize them here (Family favorites,Grandmas Classics, Recipes to try,etc.)',
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
                        'Tap + below to add a recipe',
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.circle, size: 8),
                      title: Text(
                          'Click. tag, and save photos of items (prepared and in-process food photos,recipe cards,page from margazines,etc.)'),
                    ),
                    ListTile(
                      leading: Icon(Icons.circle, size: 8),
                      title: Text('Save links to website'),
                    ),
                    ListTile(
                      leading: Icon(Icons.circle, size: 8),
                      title: Text('Add as much detail as you need'),
                    ),
                    ListTile(
                      leading: Icon(Icons.circle, size: 8),
                      title: Text('Import list of ingredients from pre-made templates'),
                    ),
                    ListTile(
                      leading: Icon(Icons.circle, size: 8),
                      title: Text('Export ingredients to a grocery list so you are ready to shop'),
                    ),
                    ListTile(
                      leading: Icon(Icons.circle, size: 8),
                      title: Text('Sort recipes by category of total time'),
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
