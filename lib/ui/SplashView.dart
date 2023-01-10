
import 'dart:async';


import 'package:flutter/material.dart';
import 'package:news_app/ui/HomeScreen.dart';

class SplashVeiw extends StatelessWidget{
  static const String routeName = 'splash';
  @override
  Widget build(BuildContext context) {

    Timer(Duration(seconds: 3) , (){
      Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
    });

    return Stack(
      children: [

        Container(
          color: Colors.white,
          child: Image.asset("assets/images/pattern.png" ,
          width: double.infinity,
          height: double.infinity,
            fit: BoxFit.fill,
          ),
        ) ,
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Container(

              child: Image.asset("assets/images/logo.png"),
            ),
          ),
        )


      ],
    );

  }

}