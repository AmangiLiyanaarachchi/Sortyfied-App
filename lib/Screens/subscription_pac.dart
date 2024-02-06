import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

import '../Constant/style_const.dart';
import 'home_Screen.dart';

List _elements = [
  {'name': 'One','group': 'a', 'subtitle': 'FREE','user_counts': '1 user','nonuser_counts': '','device_counts': '1 device','storage_counts': '25 MB','image': 'assets/onbordingScreen/figure_1.png','packageprice': 'FREE','packagepriceyear': '','packagepriceperiod': '','permission': ''},
  {'name': 'One Plus','group': 'b', 'subtitle': 'FREE','user_counts': '1 user','nonuser_counts': '2 non-users','device_counts': '1 device','storage_counts': '1 GB','image': 'assets/onbordingScreen/figure_2.png','packageprice': 'USD2.08/month','packagepriceyear': 'USD24.99/year','packagepriceperiod': 'Free 14-day trial','permission': ''},
  {'name': 'Family','group': 'c', 'subtitle': 'FREE','user_counts': '2 users','nonuser_counts': '3 non-users','device_counts': '2 devices','storage_counts': '2.5 GB','image': 'assets/onbordingScreen/figure_3.png','packageprice': 'USD4.16/month','packagepriceyear': 'USD49.99/year','packagepriceperiod': 'Free 14-day trial','permission': ''},
  {'name': 'Family Plus','group': 'd', 'subtitle': 'FREE','user_counts': '7 users','nonuser_counts': '5 non-users','device_counts': '7 devices','storage_counts': '5 GB','image': 'assets/onbordingScreen/figure_4.png','packageprice': 'USD4.99/month','packagepriceyear': 'USD59.99/year','packagepriceperiod': 'Free 14-day trial','permission': 'permission'},
];



class Subscription_Add extends StatefulWidget {
  const Subscription_Add({super.key});

  @override
  State<Subscription_Add> createState() => _Subscription_AddState();
}

class _Subscription_AddState extends State<Subscription_Add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      appBar: AppBar(
        title: Center(child: Text('Choose your subscription', style: kboldTitle)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Perform your desired action here
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              // Perform your desired action here
              print('Left button pressed!');
            },
          ),
        ],
      ),


      body: GroupListViewPage(),
    );
  }
}

class GroupListViewPage extends StatefulWidget {
  const GroupListViewPage({super.key});

  @override
  State<GroupListViewPage> createState() => _GroupListViewPageState();
}

class _GroupListViewPageState extends State<GroupListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   GroupedListView<dynamic, String>(
        elements: _elements,
        groupBy: (element) => element['group'],
        groupSeparatorBuilder: (String groupByValue) => Padding(
            padding: EdgeInsets.all(10),
        child:
        Row(
          children: [
            Flexible(child:
            Row(
            children: [
              Container(
                margin: EdgeInsets.only( left: 10,right: 10),
                child:
                Row(
                  // children: [
                  //   Radio(value: 1,groupValue: 2, onChanged: null),
                  //   Text(
                  //     "Pay Monthly",
                  //     textAlign: TextAlign.start,
                  //     style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                  //   ),
                  //   Radio(value: 1,groupValue: 2, onChanged: null),
                  //   Text(
                  //     "Pay Annually",
                  //     textAlign: TextAlign.start,
                  //     style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                  //   ),
                  // ],
                ),

              ),
            ],
          ))],
        ),
        ),
        itemBuilder: (context, dynamic element) {
          return Card(
            elevation: 10,
            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: ClipRRect(
                    child: Image(
                      image: AssetImage(element['image']),
                      height: 50.0,
                      width: 50.0,
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  )),
                  Expanded(flex:5,child: Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 20,right: 10),
                        child: Text(element['name'],
                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,

                        ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 5),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Icon(Icons.account_circle_sharp,color: Colors.grey,size: 16,),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text('${element['packageprice']}',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.orangeAccent)),
                            ),
                            ],
                          ),

                        ),
                        Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 5),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Icon(Icons.account_circle_sharp,color: Colors.grey,size: 16,),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text('${element['packagepriceyear']}'),
                              ),
                            ],
                          ),

                        ),
                        Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 5),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Icon(Icons.account_circle_sharp,color: Colors.grey,size: 16,),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: TextButton(onPressed: () => null,
                                    child: Text('${element['packagepriceperiod']}'),
                                style: ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all(Colors.white),
                                  backgroundColor: MaterialStateProperty.all(Colors.pinkAccent),
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: BorderSide(color: Colors.pinkAccent),
                                  ))
                                ),
                                ),
                              ),
                            ],
                          ),

                        ),
                      ],
                    ),

                  ),
                  ),
                  Expanded(flex:5,child: Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 20,right: 10),
                          child: Text('${element['user_counts']}',
                            // style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,

                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 5),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Icon(Icons.account_circle_sharp,color: Colors.grey,size: 16,),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text('${element['nonuser_counts']}'),
                              ),
                            ],
                          ),

                        ),
                        Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 5),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Icon(Icons.account_circle_sharp,color: Colors.grey,size: 16,),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text('${element['device_counts']}'),
                              ),
                            ],
                          ),

                        ),
                        Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 5),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Icon(Icons.account_circle_sharp,color: Colors.grey,size: 16,),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text('${element['storage_counts']}'),
                              ),
                            ],
                          ),

                        ),

                        Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 5),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Icon(Icons.account_circle_sharp,color: Colors.grey,size: 16,),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text('${element['permission']}'),
                              ),
                            ],
                          ),

                        ),
                      ],
                    ),

                  ),
                  ),
                ],
              ),
            ),
          );
        },
        itemComparator: (item1, item2) => item1['name'].compareTo(item2['name']), // optional
        useStickyGroupSeparators: true, // optional
        floatingHeader: true, // optional
        order: GroupedListOrder.ASC, // optional
      ),

    );
  }
}

