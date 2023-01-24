import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Model/SourcesResponse.dart';

class ApiManager{

  static const String BASE_URL = 'newsapi.org' ;
  static const String API_KEY = '829c723ddc584a9f988a21fb92c6d171' ;

  static Future<SourcesResponse> getSources(String? category) async {
   //https://newsapi.org
    // /v2/top-headlines/sources?
    // apiKey=829c723ddc584a9f988a21fb92c6d171&category=sports

    var url = Uri.https(
        BASE_URL ,
        '/v2/top-headlines/sources' ,
        {
          'apiKey':API_KEY ,
          'category' :category
        }
    ) ;

    var response = await http.get(url);
    var bodyString = response.body.toString() ;
    var json = jsonDecode(bodyString);
    return SourcesResponse.fromJson(jsonDecode(response.body));
  }




}