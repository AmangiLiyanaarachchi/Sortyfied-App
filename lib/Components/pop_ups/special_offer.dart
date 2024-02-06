import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sortifyd_app/Constant/style_const.dart';
import '../widgets/custom_button.dart';

class SpecialOffer extends StatefulWidget {
  const SpecialOffer({Key? key}) : super(key: key);

  @override
  State<SpecialOffer> createState() => _SpecialOfferState();
}

class _SpecialOfferState extends State<SpecialOffer> {
  final List<String> termDescriptions = [
    '529.99 for the first year, then renews annually at the standard price. Cancel or downgrade anytime.',
    'Prices shown are US prices and may vary by region.',
  ];

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Builder(
        builder: (BuildContext context) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Lottie.asset(
                          'assets/images/cheers.json', // Replace with your Lottie animation file path
                          height: 60,
                          width: 60,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 23.0),
                        child: Text(
                          'Your Special Offer!',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Open Sans',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Add some space between the Row and the image
                  Center(
                    child: Image.asset(
                      'assets/images/logo.jpg', // Replace with your image file path
                      height: 100,
                      width: 100,
                    ),
                  ),
                  SizedBox(height: 20),
                  const Text(
                    'Continue building your ultimate family command center with this special limited time offer on our premium plan.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                  SizedBox(height: 15),
                  const Text(
                    '✔️ 14-Day FREE Trial',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                  SizedBox(height: 15),
                  const Text(
                    '✔️ 50% OFF a full year of Family Plus',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                  SizedBox(height: 15),
                  const Text(
                    'More users, devices, storage; permissions, privacy settings, widgets, and more.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                  SizedBox(height: 15),
                  const Text(
                    'Terms',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                  SizedBox(height: 8),
                  // List of terms using ListView.builder with ListTile and multiple lines
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: termDescriptions.length, // Use the length of the list
                    itemBuilder: (context, index) {
                      return ListTile(
                        contentPadding: EdgeInsets.only(left: 8), // Remove ListTile's default padding
                        leading: Icon(Icons.circle, size: 8), // Use circle icon as bullet point
                        title: Text(
                          termDescriptions[index], // Use the current term description from the list
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Open Sans',
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 15),
                  CustomButton(
                    text: 'Get 50% Off Now',
                    buttonColor: kprimaryColor, // Use your desired color for the "Cancel" button
                    onPressed: () {
                      Navigator.pop(context); // Close the dialog when "Cancel" button is pressed
                    },
                    textColor: Colors.white,
                  ),
                  SizedBox(width: 15),
                  CustomButton(
                    text: 'Dismiss',
                    buttonColor: null, // Use your desired color for the "Cancel" button
                    onPressed: () {
                      Navigator.pop(context); // Close the dialog when "Cancel" button is pressed
                    },
                    textColor: kprimaryColor,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
