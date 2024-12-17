import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;

  NewsService({required this.dio});
  // void getGeneralNews() async {
  //   Response response;
  //   response = await dio.get(
  //       'https://newsapi.org/v2/top-headlines?country=us&apiKey=0a7c60f467c547f4ac902e852fa206d3');
  //   print(response.data.toString());
  //   // The below request is the same as above.
  //   response = await dio.get(
  //     '/test',
  //     queryParameters: {'id': 12, 'name': 'dio'},
  //   );
  //   print(response.data.toString());
  // }

  getNews() async {
    Response response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=0a7c60f467c547f4ac902e852fa206d3&category=general',
    );

    Map<String, dynamic> jsonData = response.data;

    List<dynamic> articls = jsonData["articles"];

    for (var article in articls) {
      print(article['author']);
    }
  }
}
