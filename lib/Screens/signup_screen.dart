import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sortifyd_app/Constant/style_const.dart';
import 'package:sortifyd_app/Screens/createPassword_screen.dart';
import 'package:sortifyd_app/Screens/resetPassword_screen.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isObscure = true;
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController referralCode = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool policy = false;

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
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(72, 76, 82, 0.16),
                        offset: Offset(0, 6),
                        blurRadius: 6,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30)),
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            //height: 54,
                            child: Stack(
                              children: [
                                TextFormField(
                                  controller: firstName,
                                  decoration: InputDecoration(
                                    hintText: 'First Name',
                                    hintStyle: const TextStyle(
                                      fontFamily: 'Open Sans',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),

                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6),
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.black,
                                      ),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    errorBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.red,
                                      ),
                                    ),
                                    errorMaxLines: 2,
                                    errorStyle: const TextStyle(fontSize: 10),
                                    contentPadding: const EdgeInsets.symmetric(
                                      vertical: 0,
                                      horizontal: 30,
                                    ),
                                    prefixIcon: Icon(
                                      Icons.person,
                                      color: Colors.grey,
                                    ), // Add mail icon
                                  ),
                                  validator: Validators.compose([
                                    Validators.required(
                                        'First Name is Required'),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            //height: 54,
                            child: Stack(
                              children: [
                                TextFormField(
                                  controller: lastName,
                                  decoration: InputDecoration(
                                    hintText: 'Last Name',
                                    hintStyle: const TextStyle(
                                      fontFamily: 'Open Sans',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),

                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6),
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.black,
                                      ),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    errorBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.red,
                                      ),
                                    ),
                                    errorMaxLines: 2,
                                    errorStyle: const TextStyle(fontSize: 10),
                                    contentPadding: const EdgeInsets.symmetric(
                                      vertical: 0,
                                      horizontal: 30,
                                    ),
                                    prefixIcon: const Icon(
                                      Icons.person,
                                      color: Colors.grey,
                                    ), // Add mail icon
                                  ),
                                  validator: Validators.compose([
                                    Validators.required(
                                        'Last Name is Required'),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            //height: 54,
                            child: Stack(
                              children: [
                                TextFormField(
                                  controller: email,
                                  decoration: InputDecoration(
                                    hintText: 'Email Address',
                                    hintStyle: const TextStyle(
                                      fontFamily: 'Open Sans',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),

                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6),
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.black,
                                      ),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    errorBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.red,
                                      ),
                                    ),
                                    errorMaxLines: 2,
                                    errorStyle: const TextStyle(fontSize: 10),
                                    contentPadding: const EdgeInsets.symmetric(
                                      vertical: 0,
                                      horizontal: 30,
                                    ),
                                    prefixIcon: Icon(
                                      Icons.mail,
                                      color: Colors.grey,
                                    ), // Add mail icon
                                  ),
                                  validator: Validators.compose([
                                    Validators.required('Email is Required'),
                                    Validators.email('Invalid Email Address'),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20,
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            //height: 54,
                            child: Stack(
                              children: [
                                TextFormField(
                                  controller: referralCode,
                                  autocorrect: false,
                                  obscureText: _isObscure,
                                  decoration: InputDecoration(
                                    /*suffixIcon: IconButton(
                                        icon: Icon(
                                          _isObscure
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                          color: Colors.grey,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            _isObscure = !_isObscure;
                                          });
                                        }),*/
                                    hintText: 'Referral Code (if given)',
                                    hintStyle: const TextStyle(
                                        fontFamily: 'Open Sans',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),

                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6),
                                      borderSide: BorderSide(
                                          width: 2, color: Colors.black),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    errorBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.red,
                                      ),
                                    ),
                                    errorMaxLines: 2,
                                    errorStyle: const TextStyle(fontSize: 10),
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 30),
                                    prefixIcon: const Icon(
                                      Icons.lock,
                                      color: Colors.grey,
                                    ), // Increase horizontal padding
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Checkbox(
                              shape: CircleBorder(),
                              value: policy,
                              onChanged: (value) {},
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                            ),
                            SizedBox(width: 19),
                            Text(
                              'I agree to the Terms of Use and Privacy Policy',
                              style: TextStyle(
                                fontFamily: 'Open Sans',
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(25, 80, 25, 45),
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
                                    builder: (context) =>
                                        const CreatePasswordScreen(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Next',
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
