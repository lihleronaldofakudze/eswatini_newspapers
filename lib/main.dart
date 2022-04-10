import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:eswatini_newspapers/screens/about_screen.dart';
import 'package:eswatini_newspapers/screens/feedback_screen.dart';
import 'package:eswatini_newspapers/screens/home_screen.dart';
import 'package:eswatini_newspapers/screens/websites_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => AnimatedSplashScreen(
              splash: 'images/eswatini.png',
              nextScreen: Home(),
              splashTransition: SplashTransition.scaleTransition,
            ),
        '/websites': (context) => WebsitesScreen(),
        '/about': (context) => AboutScreen(),
        '/feedback': (context) => FeedbackScreen(),
      },
      title: 'Eswatini Newspapers',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: GoogleFonts.nunitoTextTheme(Theme.of(context).textTheme)),
    );
  }
}
