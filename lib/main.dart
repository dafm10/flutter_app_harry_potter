
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_harry_potter/pages/home_page.dart';
import 'package:flutter_app_harry_potter/ui/responsive/responsive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Harry Potter App",
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme().apply(),
        brightness: Brightness.dark
      ),
      home: SplashScreenHouses(),
    );
  }
}

class SplashScreenHouses extends StatelessWidget {
  const SplashScreenHouses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    ResponsiveUI responsive = ResponsiveUI(context);
    
    return AnimatedSplashScreen(
      splash: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //height: double.infinity,
              child: Image.asset("assets/images/harry_potter.jpg", fit: BoxFit.fitHeight, height: responsive.hp(100),),
            ),
          ],
        ),
      ),
      nextScreen: const HomePage(),
      duration: 3000,
      splashIconSize: double.infinity,
      splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      //animationDuration: Duration(seconds: 3),
      //backgroundColor: Colors.redAccent,
    );
  }
}

