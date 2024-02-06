import 'package:flutter/material.dart';
import 'package:sortifyd_app/Constant/style_const.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddConditionScreen extends StatelessWidget {
  const AddConditionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kbackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //list- categories title
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 20 * screenWidth / kWidth,
                    vertical: 20 * screenWidth / kWidth),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    const Text(
                      'Add Condition',
                      style: kboldTitle,
                    ),
                    const Text(
                      'Save',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: kprimaryColor),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20 * screenHeight / kHeight,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, bottom: 20, right: 20),
                child: Container(
                  padding: EdgeInsets.only(
                      bottom:
                          8.0), // Add bottom padding for space between Row and underline
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors
                            .grey, // Set the background color of the grey box
                        padding: EdgeInsets.all(
                            8.0), // Add some padding to give space around the icon
                        child: SvgPicture.asset(
                          'assets/icons/add_history.svg',
                          width: 24,
                          height: 24,
                        ), // Replace 'assets/icon.png' with your image path
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      const Text(
                        'Condition',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //card list
              CategortListCard(
                title: 'Details',
                image: 'identification.png',
                description: 'Description',
              ),
              CategortListCard(
                title: 'Notes',
                image: 'medical.jpg',
                description: 'Notes',
              ),
              CategortListCard(
                title: 'Attachments',
                image: 'attachment.jfif',
                description: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Updated Single list card
// ignore: must_be_immutable
class CategortListCard extends StatefulWidget {
  CategortListCard({
    required this.title,
    required this.description,
    this.image = '',
  });
  String title;
  String description;
  String image;

  @override
  _CategortListCardState createState() => _CategortListCardState();
}

class _CategortListCardState extends State<CategortListCard> {
  bool isExpanded = false;
  TextEditingController _descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _descriptionController.text = widget.description;
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 10 * screenWidth / kWidth,
          vertical: 5 * screenHeight / kHeight),
      child: Container(
        color: kcardBackgroundColor,
        child: ExpansionTile(
          onExpansionChanged: (expanded) {
            setState(() {
              isExpanded = expanded;
            });
          },
          leading: CircleAvatar(
            backgroundColor: Colors.blueGrey,
            backgroundImage: AssetImage('assets/icons/${widget.image}'),
          ),
          title: Text(
            widget.title,
            style: TextStyle(fontSize: 14),
          ),
          children: <Widget>[
            if (widget.title == 'Attachments')
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        color: Colors.orange,
                        child: Icon(Icons.add, color: Colors.white),
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Add Attachment',
                      ),
                    ],
                  ),
                ),
              )
            else
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: TextFormField(
                  controller: _descriptionController,
                  onChanged: (value) {
                    // You can handle the user input here if needed
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter description',
                  ),
                  style: TextStyle(color: Colors.black54),
                ),
              ),
          ],
          trailing:
              Icon(isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down),
        ),
      ),
    );
  }
}


/*//Single list card
// ignore: must_be_immutable
class CategortListCard extends StatelessWidget {
  CategortListCard({
    required this.title,
    this.image = '',
  });
  String title;
  String image;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 10 * screenWidth / kWidth,
          vertical: 5 * screenHeight / kHeight),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: 10 * screenWidth / kWidth,
            vertical: 10 * screenHeight / kHeight),
        color: kcardBackgroundColor,
        width: screenWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.blueGrey,
              backgroundImage: AssetImage('assets/icons/$image'),
            ),
            SizedBox(
              width: 20 * screenWidth / kWidth,
            ),
            SizedBox(width: screenWidth * 0.6, child: Text(title)),
            Spacer(
              flex: 1,
            ),
            Icon(
              Icons.arrow_drop_down,
            )
          ],
        ),
      ),
    );
  }
}*/
