import 'package:flutter/material.dart';
import 'package:news_app/Core/Model/SourcesResponse.dart';
import 'package:news_app/Core/api/api_manager.dart';
import 'package:news_app/ui/Category_Grid_View.dart';

class CategoryNewsList extends StatelessWidget {

  Category? category ;

  CategoryNewsList(this.category, {super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      child: FutureBuilder<SourcesResponse>(
        future: ApiManager.getSources(category?.categoryId),
        builder: (buildContext , snapshot){
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

          return ListView.builder(itemBuilder: (_ , index){
            return Text('${snapshot.data?.sources?[index].name}');
          } , itemCount: snapshot.data?.sources?.length ?? 0,);

        } ,
      ),
    );

  }
}
