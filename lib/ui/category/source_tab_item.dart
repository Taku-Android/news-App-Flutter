import 'package:flutter/material.dart';

import '../../Core/Model/Source.dart';

class SourceTabItem extends StatelessWidget {
  
  Source source ;
  bool selected ;
  SourceTabItem(this.source , this.selected);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: selected?Colors.green : Colors.transparent ,
        borderRadius: BorderRadius.circular(20) ,
        border: Border.all(color: Colors.green , width: 2)
      ),
      child: Text(source.name! , style: TextStyle(
        fontSize: 20 , color: selected? Colors.white : Colors.green
      ),)
    );
  }
}