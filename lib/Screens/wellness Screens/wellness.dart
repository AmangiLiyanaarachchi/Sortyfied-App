import 'package:flutter/material.dart';
import 'package:sortifyd_app/Constant/style_const.dart';
import 'package:sortifyd_app/Screens/category_list_screen.dart';
import 'package:sortifyd_app/Screens/wellness%20Screens/personal_records.dart';

class WellnessScreen extends StatelessWidget {
  const WellnessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kbackgroundColor,
      body: SafeArea(
        //child: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //list- categories title
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Text(
                      'Wellness',
                      style: kboldTitle,
                    ),
                    InkWell(
                      onTap: () async {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CategoryListScreen(),
                          ),
                        );
                      },
                      child: ImageIcon(
                        AssetImage('assets/icons/home.png'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20 * screenHeight / kHeight,
              ),

              Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    color: kcardBackgroundColor,
                    width: screenWidth,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.blueGrey,
                              backgroundImage:
                                  AssetImage('assets/icons/health_record.png'),
                            ),
                            SizedBox(
                              width: 20 * screenWidth / kWidth,
                            ),
                            SizedBox(
                              width: 200,
                              child: Text('Personal health records'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        DecoratedBox(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Username'),
                              SizedBox(
                                width: 200,
                              ),
                              IconButton(
                                icon: Icon(Icons.arrow_right),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const PersonalRecordsScreen(),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.add_circle_outline_sharp,
                              color: korangecolor,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text('Add Person')
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              CategortListCard(
                title: 'Services/Other accounts',
                count: '0',
                image: 'person.jpg',
              ),
              CategortListCard(
                title: 'Other attachments',
                count: '0',
                image: 'attachment.jfif',
              ),
              CategortListCard(
                title: 'Lists',
                count: '1',
                image: 'list.png',
              ),
            ],
          ),
        ),
        //),
      ),
    );
  }
}

//Single list card
// ignore: must_be_immutable
class CategortListCard extends StatelessWidget {
  CategortListCard({required this.title, required this.count, this.image = ''});
  String title;
  String count;
  String image;

  @override
  Widget build(BuildContext context) {
    //double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
              width: 20,
            ),
            SizedBox(width: screenWidth * 0.6, child: Text(title)),
            Text(count),
            Spacer(
              flex: 1,
            ),
            Icon(
              Icons.add_circle_outline_sharp,
              color: korangecolor,
            )
          ],
        ),
      ),
    );
  }
}
