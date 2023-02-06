import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Core/Model/News.dart';

class NewItem extends StatelessWidget {

  News newitem;

  NewItem(this.newitem);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: CachedNetworkImage(
          imageUrl: newitem.urlToImage!,
          placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
      SizedBox(height: 5,),
      Text(newitem.title!,
        textAlign: TextAlign.start,
        style:
        TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),),
      SizedBox(height: 5,),
      Text(newitem.publishedAt!,
        textAlign: TextAlign.right,
        style: TextStyle(
          color: Colors.grey,
        ),

      )
      ],
    ),);

  }
}
