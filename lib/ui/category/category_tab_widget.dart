import 'package:flutter/material.dart';
import 'package:news_app/ui/category/source_tab_item.dart';
import 'package:news_app/ui/news/news_list.dart';

import '../../Core/Model/Source.dart';

class CategoryTabWidget extends StatefulWidget {
  List<Source>? sources;

  CategoryTabWidget(this.sources);

  @override
  State<CategoryTabWidget> createState() => _CategoryTabWidgetState();
}

class _CategoryTabWidgetState extends State<CategoryTabWidget> {
  int selectedIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
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
        margin: EdgeInsets.symmetric(vertical: 8),
        child: DefaultTabController(
            length: widget.sources!.length,
            child: Column(
              children: [
                TabBar(
                  onTap: (index){
                    setState(() {
                      selectedIndex = index ;
                    });
                  },
                  indicatorColor: Colors.transparent,
                  tabs: widget.sources!.map((source) => SourceTabItem(source,
                      widget.sources!.indexOf(source)== selectedIndex
                  
                  ))
                      .toList(),
                  isScrollable: true,
                ),
                Expanded(child: NewsList(widget.sources![selectedIndex]))
              ],
            )),
      ),

    ]);
  }
}
