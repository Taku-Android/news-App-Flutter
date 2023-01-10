



import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

  static const String routeName = 'home' ;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('News App' , style: TextStyle(
          fontSize: 22 , fontWeight: FontWeight.bold
        ),),
        centerTitle: true,

      ),

      body: Container(

      ),
    );

  }
}