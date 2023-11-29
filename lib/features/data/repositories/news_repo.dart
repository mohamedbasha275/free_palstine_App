import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:free_palestine/core/dio/api_service.dart';
import 'package:free_palestine/core/dio/end_points.dart';
import 'package:free_palestine/core/errors/failures.dart';
import 'package:free_palestine/features/data/models/news_model.dart';

abstract class NewsRepo {
  Future<Either<Failure, List<NewsModel>>> fetchNews();
}

class NewsRepoImpl implements NewsRepo {
  final ApiService apiService;

  NewsRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<NewsModel>>> fetchNews() async {
    try {
      //
      List<NewsModel> news = [];
      var data = await apiService.get(
          endpoint: Endpoint.fetchNews,parameter:
      'q=%D9%81%D9%84%D8%B3%D8%B7%D9%8A%D9%86&apiKey=70a90952062d488e8f614dc852430102&sortBy=publishedAt&pageSize=3',
      );
      print(data);
      if (data['articles'] != []) {
        for (var item in data['articles']) {
          news.add(NewsModel.fromJson(item));
        }
      }
      return right(news);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
