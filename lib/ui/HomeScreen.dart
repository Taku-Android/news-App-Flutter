



import 'package:flutter/material.dart';

import 'Category_Grid_View.dart';

class HomeScreen extends StatelessWidget{

  static const String routeName = 'home' ;

  List<Category> category = [
    Category("Sports", "assets/images/sports.png", "Sports", Color.fromARGB(
        255, 201, 28, 34)),
    Category("Politics", "assets/images/Politics.png", "Politics", Color.fromARGB(
        255, 0, 62, 144)),
    Category("Health", "assets/images/health.png", "Health", Color.fromARGB(
        255, 237, 30, 121)),
    Category("Business", "assets/images/bussines.png", "Business", Color.fromARGB(
        255, 207, 126, 72)),
    Category("Enviroment", "assets/images/environment.png", "Enviroment", Color.fromARGB(
        255, 72, 130, 207)),
    Category("Science", "assets/images/science.png", "Science", Color.fromARGB(
        255, 242, 211, 82)),


  ];

  @override
  Widget build(BuildContext context) {

      return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('News App' , style: TextStyle(
          fontSize: 22 , fontWeight: FontWeight.bold

        ),),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30) ,
            bottomRight: Radius.circular(30)
          )
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 150,
              color: Colors.green,
              child: const Text("News App!" , style: TextStyle(
                color: Colors.white ,
                  fontSize: 24 ,
                  fontWeight: FontWeight.bold
              ),),
            ) ,
            Container(
              margin: EdgeInsets.only(top: 25 , left: 10),
              child: Row(
                children: const [
                  Icon(Icons.menu , size: 30,) ,
                  SizedBox(width: 4,) ,
                  Text("Categories" , style: TextStyle(
                      color: Colors.black ,
                      fontSize: 22 ,
                      fontWeight: FontWeight.bold
                  ),)
                ],
              ),
            ) ,
            Container(
              margin: EdgeInsets.only(top: 20 , left: 10),
              child: Row(
                children: const [
                  Icon(Icons.settings , size: 30,) ,
                  SizedBox(width: 4,) ,
                  Text("Settings" , style: TextStyle(
                      color: Colors.black ,
                      fontSize: 22 ,
                      fontWeight: FontWeight.bold
                  ),)
                ],
              ),
            )

          ],
        ),
      )
      ,

      body: Stack(
        children:[

          Container(
            color: Colors.white,
            child: Image.asset("assets/images/pattern.png" ,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
          ) ,
          Container(
          padding: EdgeInsets.only(top: 20 , bottom: 40 , left: 40 , right: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text("Pick your category \n of interest" , style: TextStyle(
                color: Colors.black ,
                fontSize: 22
              ),) ,
              SizedBox(height: 10,)
              ,
              Expanded(
                child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2 ,
                crossAxisSpacing: 8 ,
                mainAxisSpacing: 8 ,
                childAspectRatio: 5/6 ,
            ),
                  itemBuilder:(context , index) => CategoryGridView(
                    index: index ,
                    category: category[index] ,
                  ) ,
                itemCount: category.length,

            ),
              ),
            ]
          ),
        ),
    ]
      ),


    );

  }
}