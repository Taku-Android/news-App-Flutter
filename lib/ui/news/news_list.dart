import 'package:flutter/material.dart';
import 'package:news_app/Core/Model/NewsResponse.dart';
import 'package:news_app/Core/Model/Source.dart';
import 'package:news_app/Core/api/api_manager.dart';

class NewsList extends StatelessWidget {

  Source source ;
  NewsList(this.source);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<NewsResponse>(
        future: ApiManager.getNews(source.id??''),
        builder: (_,snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if(snapshot.hasError){
            return  Center(child: Text("ERROR ${snapshot.error.toString()} "),);
          }
          if(snapshot.data?.status == "error" ){
            return  Center(child: Text("Server error${
                snapshot.data?.message
            } "),);
          }

          var newsList = snapshot.data?.articles;

          return ListView.builder(
            itemBuilder: (_ , index){

              return Text('${newsList![index].title}');
            },
            itemCount: newsList?.length,);

        },
      ),
    );
  }
}
