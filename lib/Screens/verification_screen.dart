import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sortifyd_app/Constant/style_const.dart';
import 'package:sortifyd_app/Screens/createPassword_screen.dart';
import 'package:sortifyd_app/Screens/login_screen.dart';
import 'package:sortifyd_app/Screens/resetPassword_screen.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  List<String> verificationCode = List.generate(6, (index) => '');

  List<FocusNode> focusNodes = List.generate(6, (index) => FocusNode());
  List<TextEditingController> controllers =
      List.generate(6, (index) => TextEditingController());

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              color: Color.fromARGB(128, 248, 205, 205),
              height: MediaQuery.of(context).size.height * 0.55,
              width: MediaQuery.of(context).size.width,
            ),
            Padding(
              padding: EdgeInsets.only(left: 150, right: 150, top: 40),
              child: SvgPicture.asset(
                'assets/images/logo.svg',
                height: 120,
                width: 120,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Container(
                //height: 1000,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(72, 76, 82, 0.16),
                        offset: Offset(0, 6),
                        blurRadius: 6,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 239,
                left: 110,
                right: 110,
              ),
              child: Text(
                "Enter 6 digit code sent to",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 269,
                left: 50,
                right: 50,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                //height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    //border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(50),
                    color: kNextButtonColor),

                child: const Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                  child: Text(
                    'example@gmail.com',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'open Sans',
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 400,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  6,
                  (index) => SizedBox(
                    width: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: TextField(
                        controller: controllers[index],
                        focusNode: focusNodes[index],
                        onChanged: (value) {
                          verificationCode[index] = value;
                          if (value.isNotEmpty) {
                            if (index < 5) {
                              FocusScope.of(context)
                                  .requestFocus(focusNodes[index + 1]);
                            } else {
                              // Last digit entered, perform validation or submit action
                              // Example: _submitVerificationCode();
                            }
                          }
                        },
                        maxLength: 1,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          counterText: '',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 480,
                left: 125,
                right: 125,
              ),
              child: Text(
                'Resend Code',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: kprimaryColor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 580, 25, 45),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: kprimaryColor,
                ),
                child: MaterialButton(
                  onPressed: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/*import 'package:flutter/material.dart';
import 'package:sortifyd_app/Screens/createPassword_screen.dart';

import '../Constant/style_const.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  List<String> verificationCode =
      List.filled(6, ''); // List to store the user's input

  void verifyCode() {
    // Perform verification logic here
    // Compare the entered verification code with the generated code
    // You can display success/error message based on the verification result
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:
            AppBar(title: const Text('Authenticate device'), centerTitle: true),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50.0,
              ),
              const Text(
                'Enter 6 - digit code sent to',
                style: TextStyle(fontSize: 18, color: kprimaryColor),
              ),
              const Text(
                'email@gmail.com',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  6,
                  (index) => SizedBox(
                    width: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            verificationCode[index] = value;
                          });
                        },
                        maxLength: 2,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          counterText: '',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: kprimaryColor,
                  ),
                  child: MaterialButton(
                    onPressed: () => {
                      verifyCode(),
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CreatePasswordScreen()),
                      ),
                    },
                    textColor: Colors.white,
                    child: const Text('SUBMIT'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Resend code',
                style: TextStyle(fontSize: 18, color: kprimaryColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/
