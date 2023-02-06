
import 'dart:async';


import 'package:flutter/material.dart';
import 'package:news_app/ui/home/HomeScreen.dart';

class SplashVeiw extends StatefulWidget{
  static const String routeName = 'splash';

  @override
  State<SplashVeiw> createState() => _SplashVeiwState();
}

class _SplashVeiwState extends State<SplashVeiw> {
  @override
  Widget build(BuildContext context) {


    Timer(const Duration(seconds: 2) , (){
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