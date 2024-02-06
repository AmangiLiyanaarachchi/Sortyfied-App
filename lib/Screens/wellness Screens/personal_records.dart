import 'package:flutter/material.dart';
import 'package:sortifyd_app/Constant/style_const.dart';
import 'package:sortifyd_app/Screens/wellness%20Screens/checkups.dart';
import 'package:sortifyd_app/Screens/wellness%20Screens/emergency_contact.dart';
import 'package:sortifyd_app/Screens/wellness%20Screens/eyeglass.dart';
import 'package:sortifyd_app/Screens/wellness%20Screens/healthcare_providers.dart';
import 'package:sortifyd_app/Screens/wellness%20Screens/identification.dart';
import 'package:sortifyd_app/Screens/wellness%20Screens/medical_condition.dart';
import 'package:sortifyd_app/Screens/wellness%20Screens/medical_history.dart';
import 'package:sortifyd_app/Screens/wellness%20Screens/medication.dart';
import 'package:sortifyd_app/Screens/wellness%20Screens/vital_numbers.dart';

class PersonalRecordsScreen extends StatelessWidget {
  const PersonalRecordsScreen({super.key});

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
                    Text(
                      'Username',
                      style: kboldTitle,
                    ),
                    ImageIcon(
                      AssetImage('assets/icons/home.png'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20 * screenHeight / kHeight,
              ),
              //card list
              CategortListCard(
                title: 'Identification',
                count: '',
                image: 'identification.png',
              ),

              CategortListCard(
                title: 'Medical history',
                count: '',
                image: 'medical.jpg',
              ),
              CategortListCard(
                title: 'Healthcare providers',
                count: '0',
                image: 'helthcare.png',
              ),
              CategortListCard(
                title: 'Emergency contacts',
                count: '0',
                image: 'contact.png',
              ),
              CategortListCard(
                title: 'Medications',
                count: '0',
                image: 'medication.png',
              ),
              CategortListCard(
                title: 'Medical conditions/allergies',
                count: '0',
                image: 'medical_condition.png',
              ),
              CategortListCard(
                title: 'Eyeglass prescriptions',
                count: '0',
                image: 'eyeglass.jpg',
              ),
              CategortListCard(
                title: 'Vital numbers',
                count: '0',
                image: 'vital_numbers.jpg',
              ),
              CategortListCard(
                title: 'Checkups and visits',
                count: '0',
                image: 'checkup.jpg',
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
  CategortListCard({
    required this.title,
    required this.count,
    this.image = '',
  });
  String title;
  String count;
  String image;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 10 * screenWidth / kWidth,
          vertical: 5 * screenHeight / kHeight),
      child: GestureDetector(
        onTap: () {
          switch (title) {
            case 'Identification':
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IdentificationScreen()),
              );
              break;
            case 'Medical history':
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MedicalHistoryScreen()),
              );
              break;
            case 'Healthcare providers':
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HealthcareProvidersScreen()),
              );
              break;
            case 'Emergency contacts':
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => EmergencyContactScreen()),
              );
              break;
            case 'Medications':
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MedicationScreen()),
              );
              break;
            case 'Medical conditions/allergies':
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MedicalConditionScreen()),
              );
              break;
            case 'Eyeglass prescriptions':
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EyeglassScreen()),
              );
              break;
            case 'Vital numbers':
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VitalNumbersScreen()),
              );
              break;
            case 'Checkups and visits':
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CheackupsScreen()),
              );
              break;
          }
        },
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
              Text(count),
              Spacer(
                flex: 1,
              ),
              Icon(
                Icons.arrow_right,
              )
            ],
          ),
        ),
      ),
    );
  }
}
