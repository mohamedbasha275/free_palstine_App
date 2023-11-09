import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:free_palestine/core/dio/api_service.dart';
import 'package:free_palestine/core/dio/end_points.dart';
import 'package:free_palestine/core/errors/failures.dart';
import 'package:free_palestine/features/data/local/poems_data_components.dart';
import 'package:free_palestine/features/data/local/poems_list.dart';
import 'package:free_palestine/features/data/models/filter_model.dart';
import 'package:free_palestine/features/data/models/poem_model.dart';
import 'package:free_palestine/features/data/models/poet_model.dart';
import 'package:free_palestine/features/data/models/short_poem_model.dart';

abstract class FilterRepo {
  Future<Either<Failure, List<FilterModel>>> fetchFilters({String filter});
}

class FilterRepoImpl implements FilterRepo {
  final ApiService apiService;

  FilterRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<FilterModel>>> fetchFilters(
      {String filter = 'poems'}) async {
    try {
      List<FilterModel> filters = [];
      List<ShortPoemModel> poems = [];
      List<PoetModel> poets = [];
      if (filter == 'poems') {
        var data = await apiService.get(endpoint: Endpoint.poems);
        if (data['data'] != []) {
          for (var item in data['data']) {
            poems.add(ShortPoemModel.fromJson(item));
          }
        }
        filters.add(FilterModel(
            value: 'poems', filter: 'poems', poems: poems, poets: []));
      } else if (filter == 'poets') {
        var data = await apiService.get(endpoint: Endpoint.poets);
        if (data['data'] != []) {
          for (var item in data['data']) {
            poets.add(PoetModel.fromJson(item));
          }
        }
        print('pp:$poets');
        filters.add(FilterModel(
            value: 'poets', filter: 'poets', poems: [], poets: poets));
      }
      return right(filters);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
