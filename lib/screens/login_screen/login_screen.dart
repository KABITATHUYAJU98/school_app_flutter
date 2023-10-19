import 'package:flutter/material.dart';
import 'package:hamro_vidyalaya/components/custom_buttons.dart';
import 'package:hamro_vidyalaya/constants.dart';
import 'package:hamro_vidyalaya/screens/home_screen/home_screen.dart';

late bool _passwordVisible;

class LoginScreen extends StatefulWidget {
  static String routeName = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //validating our form
  final _formKey = GlobalKey<FormState>();

  //changes current state
  @override
  void initState() {
    super.initState();
    _passwordVisible = true;
  }

  Widget build(BuildContext context) {
    return GestureDetector(
      //when user taps anywhere on the screen, keyboard hides!!
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),

      child: Scaffold(
        body: ListView(
          children: [
            //dividing the body into two half
            Container(
              //using media query to fit all screen size in same manner
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.8,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/splash.png',
                    height: 150.0,
                    width: 150.0,
                  ),
                  const SizedBox(height: kDefaultPadding / 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hello ',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.w200,
                            ),
                      ),
                      Text('Student',
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ),
                  const SizedBox(height: kDefaultPadding / 6),
                  Text(
                    'Sign in to Continue',
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding * 3),
                  topRight: Radius.circular(kDefaultPadding * 3),
                ),
                color: kOtherColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(children: [
                  Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          sizedBox,
                          //this is a best practice for clean code
                          buildEmailField(),
                          sizedBox,
                          buildPasswordField(),
                          sizedBox,
                          DefaultButton(
                              onPress: () {
                                if (_formKey.currentState!.validate()) {
                                  //go to next activity
                                  Navigator.pushNamedAndRemoveUntil(context,
                                      HomeScreen.routeName, (route) => false);
                                }
                              },
                              title: 'SIGN IN',
                              iconData: Icons.arrow_forward_outlined),

                          sizedBox,
                          const Align(
                            alignment: Alignment.bottomRight,
                            child: Text('Forgot Password',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: kPrimaryColor, fontSize: 15.0)),
                          ),
                        ],
                      ))
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
      textAlign: TextAlign.start,
      keyboardType: TextInputType.emailAddress,
      style: const TextStyle(
          color: kTextBlackColor, fontSize: 17.0, fontWeight: FontWeight.w300),
      decoration: const InputDecoration(
        labelText: 'Mobile Number/Email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isDense: true,
      ),
      validator: (value) {
        //for validation
        RegExp regExp = RegExp(emailPattern);
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
          //if it doesnot matches the pattern, like if it doesnot contains @
        } else if (!regExp.hasMatch(value)) {
          return 'Please enter a valid email address';
        }
        return null;
      },
    );
  }

  TextFormField buildPasswordField() {
    return TextFormField(
      obscureText: _passwordVisible,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.emailAddress,
      style: const TextStyle(
          color: kTextBlackColor, fontSize: 17.0, fontWeight: FontWeight.w300),
      decoration: InputDecoration(
          labelText: 'Password',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          isDense: true,
          suffixIcon: IconButton(
              icon: Icon(_passwordVisible
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_off_outlined),
              iconSize: kDefaultPadding,
              onPressed: () {
                setState(() {
                  _passwordVisible = !_passwordVisible;
                });
              })),
      validator: (value) {
        if (value!.length < 5) {
          return 'Must be more than 5 charaters';
        }
        return null;
      },
    );
  }
}
