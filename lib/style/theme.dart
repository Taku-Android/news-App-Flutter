

import 'package:flutter/material.dart';

class MyTheme{

  static final lightTheme = ThemeData(
    primaryColor: Colors.green ,
    appBarTheme: AppBarTheme(
      color: Colors.green
  ) ,
  textTheme: TextTheme(
    headline6: TextStyle(
      fontSize: 22 ,
      color: Colors.white ,
      fontWeight: FontWeight.w500
    )
  )

  );

}