import 'dart:ffi';

import 'package:flutter/material.dart';

class CategoryGridView extends StatelessWidget {

  Category category ;
  int index ;

  CategoryGridView({
    required this.category ,
    required this.index
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: category.categoryColor ,
        borderRadius:
        BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20) ,
          bottomLeft: Radius.circular(index.isOdd?0 : 20),
          bottomRight: Radius.circular(index.isOdd?20 : 0)
        )



      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(category.categoryImage) ,
          Text(category.categoryTitle , style: TextStyle(
            fontSize: 22 , color: Colors.white
          ),)
        ],
      ),

    );
  }

}
   class Category {

    String categoryId ;
    String categoryImage ;
    String categoryTitle ;
    Color categoryColor ;

    Category(this.categoryId, this.categoryImage, this.categoryTitle , this.categoryColor);

    
}


