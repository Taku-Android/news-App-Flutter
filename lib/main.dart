import 'package:flutter/material.dart';
import 'package:news_app/ui/home/HomeScreen.dart';
import 'package:news_app/ui/SplashView.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      theme: ThemeData(
        primarySwatch: Colors.green
      ),

    initialRoute: SplashVeiw.routeName,



    routes:{
      SplashVeiw.routeName : (context) => SplashVeiw() ,
      HomeScreen.routeName : (context) => HomeScreen() ,



    } ,
    );


  }
}