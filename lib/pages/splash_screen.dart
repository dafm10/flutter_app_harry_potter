import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app_harry_potter/pages/home_page.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => InitState();

}

class InitState extends State<SplashScreen>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 3);
    return Timer(duration, housesRoute);
  }

  housesRoute(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget(){
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            child: Image.asset("assets/images/harry_potter.jpg", fit: BoxFit.fitHeight,),
          ),
        ],
      ),
    );
  }


}