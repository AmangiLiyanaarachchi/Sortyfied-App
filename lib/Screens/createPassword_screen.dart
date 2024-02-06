import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sortifyd_app/Constant/style_const.dart';
import 'package:sortifyd_app/Screens/verification_screen.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({Key? key}) : super(key: key);

  @override
  _CreatePasswordScreenState createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  bool _isObscure = true;
  bool _obscure = true;
  TextEditingController createPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

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
                                  controller: createPassword,
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
                                    hintText: 'Create Master Password',
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
                                      Icons.lock,
                                      color: Colors.grey,
                                    ), // Add mail icon
                                  ),
                                  validator: Validators.compose([
                                    Validators.required(
                                        'Master Password is Required'),
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
                                  controller: confirmPassword,
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                        icon: Icon(
                                          _obscure
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                          color: Colors.grey,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            _obscure = !_obscure;
                                          });
                                        }),
                                    hintText: 'Confirm Master Password',
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
                                      Icons.lock,
                                      color: Colors.grey,
                                    ), // Add mail icon
                                  ),
                                  validator: Validators.compose([
                                    Validators.required(
                                        'Confirm Master Password is Required'),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        RichText(
                          text: const TextSpan(
                            children: [
                              WidgetSpan(
                                child: BulletSpan(
                                    text:
                                        'Choose a strong master password with at least'),
                              ),
                              WidgetSpan(
                                child: BulletOutlineSpan(text: '8 characters'),
                              ),
                              WidgetSpan(
                                child: BulletOutlineSpan(
                                    text: 'one uppercase letter'),
                              ),
                              WidgetSpan(
                                child: BulletOutlineSpan(
                                    text: 'one lowercase letter'),
                              ),
                              WidgetSpan(
                                child: BulletOutlineSpan(text: 'one number'),
                              ),
                              WidgetSpan(
                                child: BulletOutlineSpan(
                                    text: 'one symbol(!,@,#,etc)'),
                              ),
                              WidgetSpan(
                                child: BulletSpan(
                                    text:
                                        'Choose one you can share - you will need to share this master password with users you add to this account.'),
                              ),
                              WidgetSpan(
                                child: BulletSpan(
                                    text:
                                        'Please remember it - only you and your other account users will know this password. For your security, your master password '),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(25, 50, 25, 25),
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
                                        const VerificationScreen(),
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

class BulletSpan extends StatelessWidget {
  final String text;

  const BulletSpan({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 8,
          height: 8,
          margin: EdgeInsets.only(top: 8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: Text(text),
        ),
      ],
    );
  }
}

class BulletOutlineSpan extends StatelessWidget {
  final String text;

  const BulletOutlineSpan({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 8,
          height: 8,
          margin: EdgeInsets.only(top: 8, left: 15.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: Text(text),
        ),
      ],
    );
  }
}
