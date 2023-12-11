import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:free_palestine/core/dio/api_service.dart';
import 'package:free_palestine/core/dio/end_points.dart';
import 'package:free_palestine/core/errors/failures.dart';
import 'package:free_palestine/features/data/models/news_model.dart';

abstract class NewsRepo {
  Future<Either<Failure, List<NewsModel>>> fetchNews();
  Future<Either<Failure, List<NewsModel>>> fetchAllNews();
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
     // 'q=%D8%A7%D9%84%D9%82%D8%AF%D8%B3&apiKey=70a90952062d488e8f614dc852430102&sortBy=publishedAt&pageSize=3',
      'q=%D8%BA%D8%B2%D8%A9&apiKey=70a90952062d488e8f614dc852430102&sortBy=publishedAt&pageSize=4',
      );
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


  @override
  Future<Either<Failure, List<NewsModel>>> fetchAllNews() async {
    try {
      //
      List<NewsModel> news = [];
      var data1 = await apiService.get(
        endpoint: Endpoint.fetchNews,parameter:
      'q=%D8%BA%D8%B2%D8%A9&apiKey=70a90952062d488e8f614dc852430102&sortBy=publishedAt&pageSize=60',
      );
      var data2 = await apiService.get(
        endpoint: Endpoint.fetchNews,parameter:
      'q=%D8%A7%D9%84%D9%82%D8%AF%D8%B3&apiKey=70a90952062d488e8f614dc852430102&sortBy=publishedAt&pageSize=30',
      );
      var data3 = await apiService.get(
        endpoint: Endpoint.fetchNews,parameter:
      'q=%D9%81%D9%84%D8%B3%D8%B7%D9%8A%D9%86&apiKey=70a90952062d488e8f614dc852430102&sortBy=publishedAt&pageSize=30',
      );
      if (data1['articles'] != []) {
        for (var item in data1['articles']) {
          news.add(NewsModel.fromJson(item));
        }
      }
      if (data2['articles'] != []) {
        for (var item in data2['articles']) {
          news.add(NewsModel.fromJson(item));
        }
      }
      if (data3['articles'] != []) {
        for (var item in data3['articles']) {
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
