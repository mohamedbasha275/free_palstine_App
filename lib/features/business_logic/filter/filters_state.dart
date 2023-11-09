part of 'filters_cubit.dart';

@immutable
abstract class FiltersState {
  const FiltersState();
}

class FiltersInitial extends FiltersState {}
class FiltersLoading extends FiltersState {}
class FiltersEmpty extends FiltersState {}
class FiltersFailure extends FiltersState {
  final String errorMessage;
  const FiltersFailure(this.errorMessage);
}
class FiltersSuccess extends FiltersState {
  final List<FilterModel> filters;
  const FiltersSuccess(this.filters);
}