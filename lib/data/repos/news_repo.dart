import 'package:cu_iti_quizapp/data/globals.dart';
import 'package:cu_iti_quizapp/data/models/news_model.dart';
import 'package:dio/dio.dart';

class NewsRepo {
  final dio = Dio(BaseOptions(baseUrl: baseURL));

  Future<NewsResponse?> getNews() async {
    var response = await dio.get(getNewsEndPoint, queryParameters: {
      'q': 'tesla',
      'from': '2024-08-15',
      'sortBy': 'publishedAt',
      'apiKey': '7c07f0c86d484b30a5af1289c531cff1'
    });

    if (response.statusCode == 200) {
      print('news api response is:   $response');

      print(response.data['totalResults']);

      var newsModel = NewsResponse.fromJson(response.data);

      newsModel.totalResults;
      return newsModel;
    } else {
      return null;
    }
  }
}
