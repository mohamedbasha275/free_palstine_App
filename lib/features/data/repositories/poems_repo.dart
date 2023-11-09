import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:free_palestine/core/dio/api_service.dart';
import 'package:free_palestine/core/dio/end_points.dart';
import 'package:free_palestine/core/errors/failures.dart';
import 'package:free_palestine/features/data/local/poems_list.dart';
import 'package:free_palestine/features/data/models/filter_model.dart';
import 'package:free_palestine/features/data/models/poem_model.dart';
import 'package:free_palestine/features/data/models/poet_model.dart';
import 'package:free_palestine/features/data/models/short_poem_model.dart';

abstract class PoemsRepo {
  Future<Either<Failure, List<ShortPoemModel>>> fetchPoems(
      {String query, poetId});

  Future<Either<Failure, PoemModel>> showPoem({poemId});

  Future<void> saveMarkedLine({poemId, lineIndex});

  Future<void> savePoemLine({poemId, lineIndex});

  Future<void> removePoemLine({poemId, lineIndex});

  Future<void> removePoemLines({poemId});
}

class PoemsRepoImpl implements PoemsRepo {
  final ApiService apiService;

  PoemsRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<ShortPoemModel>>> fetchPoems(
      {String query = '', poetId}) async {
    try {
      List<ShortPoemModel> poems = [];
      var data = await apiService.get(
          endpoint: Endpoint.poetPoems, parameter: '$poetId');
      if (data['data'] != []) {
        for (var item in data['data']) {
          poems.add(ShortPoemModel.fromJson(item));
        }
      }
      print('object$poems');
      return right(poems);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, PoemModel>> showPoem({poemId}) async {
    try {
      var data = await apiService.get(
          endpoint: Endpoint.showPoem, parameter: '$poemId');
      List<int> savedLines = [];
      if (data['data']['poem_saved'] != null &&
          data['data']['poem_saved'].isNotEmpty) {
        for (var item in data['data']['poem_saved']) {
          savedLines.add(item['line']);
        }
      }
      List<String> wordsList = [];
      List<String> wordsMean = [];
      if (data['data']['word_means'].isNotEmpty) {
        for (var item in data['data']['word_means']) {
          wordsList.add(item['word']);
          wordsMean.add(item['mean']);
        }
      }
      PoemModel poem =
          PoemModel.fromJson(data['data'], savedLines, wordsList, wordsMean);
      return right(poem);
    } catch (e) {
      print('eror:$e');
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<void> saveMarkedLine({poemId, lineIndex}) async {
    try {
      var data = await apiService.post(endpoint: Endpoint.poemMark, data: {
        'poem_id': poemId,
        'line': lineIndex,
      });
    } catch (e) {
      // Handle any errors
    }
  }

  @override
  Future<void> savePoemLine({poemId, lineIndex}) async {
    try {
      var data = await apiService.post(endpoint: Endpoint.saveLine, data: {
        'poem_id': poemId,
        'line': lineIndex,
      });
    } catch (e) {
      // Handle any errors
    }
  }

  @override
  Future<void> removePoemLine({poemId, lineIndex}) async {
    try {
      var data = await apiService.delete(
          endpoint: Endpoint.removePoemLine, parameter: '$poemId/$lineIndex');
    } catch (e) {
      // Handle any errors
    }
  }

  @override
  Future<void> removePoemLines({poemId}) async {
    try {
      var data = await apiService.delete(
          endpoint: Endpoint.removePoemLines, parameter: '$poemId');
    } catch (e) {
      // Handle any errors
    }
  }
}
