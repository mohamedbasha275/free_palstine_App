import 'package:free_palestine/features/data/models/poet_model.dart';
import 'package:free_palestine/features/data/models/short_poem_model.dart';

class FilterModel {
  final String value;
  final String filter;
  final List<ShortPoemModel>? poems;
  final List<PoetModel>? poets;

  FilterModel({
    required this.value,
    required this.filter,
    required this.poems,
    required this.poets,
  });
  factory FilterModel.fromJson(Map<String, dynamic> json,List<ShortPoemModel>? poems,List<PoetModel>? poets) {
    return FilterModel(
      value: json['value'],
      filter: json['filter'],
      poems: poems,
      poets: poets,
    );
  }
}
