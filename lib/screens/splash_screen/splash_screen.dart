import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hamro_vidyalaya/constants.dart';
import 'package:hamro_vidyalaya/screens/login_screen/login_screen.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = 'SplashScreen'; // screen - route name

  @override
  Widget build(BuildContext context) {
    //using future to go from 1 screen to another via duration time
    Future.delayed(const Duration(seconds: 5), () {
      //no return when user is on login screen and press back, it will not return the user to the splash screen
      Navigator.pushNamedAndRemoveUntil(
          context, LoginScreen.routeName, (route) => false);
    });

    //scaffold color set to primary color in main in our text theme
    return Scaffold(
      //row with colm
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hamro',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: kTextWhiteColor,
                        fontSize: 35.0,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 1.0,
                      ),
                ),
                Text('Vidyalaya',
                    style: GoogleFonts.pattaya(
                        fontSize: 35.0,
                        fontStyle: FontStyle.italic,
                        color: kTextWhiteColor,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.w700)),
                Image.asset(
                  'assets/images/splash.png',
                  height: 150.0,
                  width: 150.0,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
