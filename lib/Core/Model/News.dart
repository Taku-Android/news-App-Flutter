
import 'Source.dart';

/// source : {"id":"bbc-news","name":"BBC News"}
/// author : null
/// title : "Liverpool beat relegation rivals Reading"
/// description : "Watch highlights as Liverpool beat relegation rivals Reading 2-0 in the Women's Super League."
/// url : "https://www.bbc.co.uk/sport/av/football/64538432"
/// urlToImage : "https://ichef.bbci.co.uk/news/1024/cpsprodpb/142DD/production/_128535628_p0f19hp1.jpg"
/// publishedAt : "2023-02-06T10:03:32Z"
/// content : "Watch highlights as Liverpool beat relegation rivals Reading 2-0 in the Women's Super League.\r\nMATCH REPORT: Liverpool 2-0 Reading\r\nAvailable to UK users only."

class News {
  News({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  News.fromJson(dynamic json) {
    source = json['source'] != null ? Source.fromJson(json['source']) : null;
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
    content = json['content'];
  }

  Source? source;
  dynamic author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (source != null) {
      map['source'] = source?.toJson();
    }
    map['author'] = author;
    map['title'] = title;
    map['description'] = description;
    map['url'] = url;
    map['urlToImage'] = urlToImage;
    map['publishedAt'] = publishedAt;
    map['content'] = content;
    return map;
  }
}
