import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hamro_vidyalaya/constants.dart';
import 'package:hamro_vidyalaya/routes.dart';
import 'package:hamro_vidyalaya/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hamro Vidyalaya',
      debugShowCheckedModeBanner: false,
      //using light theme for this app
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: kPrimaryColor, //default color for scaffold
          primaryColor: kPrimaryColor,
          appBarTheme: const AppBarTheme(color: kPrimaryColor, elevation: 0),

          // use sourceSansPro as googlefont for our app
          textTheme:
              GoogleFonts.sourceCodeProTextTheme(Theme.of(context).textTheme)
                  .apply()
                  .copyWith(
                      bodyMedium:
                          const TextStyle(
                              color: kTextWhiteColor,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                      bodySmall: const TextStyle(
                          color: kTextWhiteColor,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300)),

          //input decoration theme for all in app
          inputDecorationTheme: const InputDecorationTheme(
            //labelStyle for FormField
            labelStyle: TextStyle(
              fontSize: 15.0,
              color: kTextLightColor,
              height: 0.5,
            ),

            //hintStyle
            hintStyle:
                TextStyle(fontSize: 16.0, color: kTextBlackColor, height: 0.5),

            //we are using underline input border instead of outline
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
              color: kTextLightColor,
              width: 0.7,
            )),

            border: UnderlineInputBorder(
                borderSide: BorderSide(color: kTextLightColor)),

            disabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kTextLightColor)),

            //on_focus change color
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kTextLightColor)),

            //color changes when user enters wrong information, we will use validators for this process
            errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kErrorBorderColor, width: 1.2)),

            focusedErrorBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kErrorBorderColor, width: 1.2)),
          )),

      //initial route for this app is splash_screen
      initialRoute: SplashScreen.routeName,
      //define the routes file here in order to access the routes any where all over the app
      routes: routes,
    );
  }
}
