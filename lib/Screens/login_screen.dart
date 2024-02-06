import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sortifyd_app/Constant/style_const.dart';
import 'package:sortifyd_app/Screens/category_list_screen.dart';
import 'package:sortifyd_app/Screens/home_Screen.dart';
import 'package:sortifyd_app/Screens/resetPassword_screen.dart';
import 'package:sortifyd_app/Screens/signup_screen.dart';
import 'package:sortifyd_app/Screens/wellness%20Screens/wellness.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

import 'home_Screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscure = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();

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
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    boxShadow: const [
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
                                      borderSide: const BorderSide(
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
                                  controller: password,
                                  autocorrect: false,
                                  obscureText: _isObscure,
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
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
                                        }),
                                    hintText: 'Master Password',
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
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      color: Colors.grey,
                                    ), // Increase horizontal padding
                                  ),
                                  validator: Validators.compose([
                                    Validators.required('Password is Required'),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ResetPasswordScreen(),
                                  ),
                                )
                              },
                              child: const Text(
                                'Forgot password?',
                                style: TextStyle(
                                    color: kprimaryColor,
                                    fontFamily: 'Open Sans',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600),
                              ),
                            )),
                        const SizedBox(height: 30.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: kprimaryColor,
                            ),
                            child: MaterialButton(
                              // onPressed: _login,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomeScreen(),
                                  ),
                                );
                              },
                              textColor: Colors.white,
                              child: const Text(
                                'Log In',
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Align(
                          alignment: Alignment.center,
                          child: const Text(
                            'Need an account?',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                color: kprimaryColor,
                                width: 2.0,
                              ),
                            ),
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignUpScreen(),
                                  ),
                                );
                              },
                              textColor: kprimaryColor,
                              child: const Text(
                                'Sign Up Now',
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Align(
                          alignment: Alignment.center,
                          child: const Text(
                            'Terms of Use and Privacy Policy',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              //color: kprimaryColor,
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
