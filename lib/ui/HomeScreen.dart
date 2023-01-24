import 'package:flutter/material.dart';
import 'package:news_app/ui/category_list_screen.dart';

import 'Category_Grid_View.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Category> category = [
    Category("sports", "assets/images/sports.png", "Sports",
        const Color.fromARGB(255, 201, 28, 34)),
    Category("Politics", "assets/images/Politics.png", "Politics",
        const Color.fromARGB(255, 0, 62, 144)),
    Category("health", "assets/images/health.png", "Health",
        const Color.fromARGB(255, 237, 30, 121)),
    Category("business", "assets/images/bussines.png", "Business",
        const Color.fromARGB(255, 207, 126, 72)),
    Category("entertainment", "assets/images/environment.png", "Enviroment",
        const Color.fromARGB(255, 72, 130, 207)),
    Category("science", "assets/images/science.png", "Science",
        const Color.fromARGB(255, 242, 211, 82)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            selectedCategory == null
                ? 'News App'
                : selectedCategory!.categoryTitle,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 150,
                color: Colors.green,
                child: const Text(
                  "News App!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 25, left: 10),
                child: InkWell(
                  onTap: (){
                    setState(() {
                      selectedCategory = null ;
                      Navigator.pop(context);
                    });
                  },
                  child: Row(
                    children: const [
                      Icon(
                        Icons.menu,
                        size: 30,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Categories",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 10),
                child: Row(
                  children: const [
                    Icon(
                      Icons.settings,
                      size: 30,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        body: selectedCategory == null
            ? Stack(children: [
                Container(
                  color: Colors.white,
                  child: Image.asset(
                    "assets/images/pattern.png",
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 40, left: 40, right: 40),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Pick your category \n of interest",
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,
                              childAspectRatio: 5 / 6,
                            ),
                            itemBuilder: (context, index) => CategoryGridView(
                              index: index,
                              category: category[index],
                              onClickItem: onClick,
                            ),
                            itemCount: category.length,
                          ),
                        ),
                      ]),
                ),
              ])
            : CategoryNewsList(selectedCategory));
  }

  Category? selectedCategory = null;

  void onClick(Category category) {
    setState(() {
      selectedCategory = category;
    });
  }
}
