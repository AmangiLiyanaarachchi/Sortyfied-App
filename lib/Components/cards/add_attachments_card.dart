import 'package:flutter/material.dart';
import 'package:sortifyd_app/Constant/style_const.dart';

class AddAtachmentsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
      decoration: BoxDecoration(
        color: Color(0xAF9B9898),
        borderRadius: BorderRadius.circular(0), // Set the border radius here
      ),
      child: ExpansionTile(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('your_avatar_image_path.png'),
              radius: 16,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                'Attachments',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5.0, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.add_box,
                              size: 40, // Set the desired icon size
                              color: Color.fromARGB(255, 222, 186, 81),
                            ),
                            onPressed: () {
                              // Implement the action when the add icon is tapped.
                            },
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Add attachments',
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(12),
                              ),
                            ),
                          ),
                        ],
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
