import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:free_palestine/features/data/models/filter_model.dart';
import 'package:free_palestine/features/data/repositories/filter_repo.dart';
part 'filters_state.dart';

class FiltersCubit extends Cubit<FiltersState> {
  final FilterRepo filterRepo;
  FiltersCubit(this.filterRepo) : super(FiltersInitial());

  // fetch Filters
  Future<void> fetchFilters({String filter = 'poems'}) async {
    emit(FiltersLoading());
    var result = await filterRepo.fetchFilters(filter: filter);
    result.fold((failure) {
      emit(FiltersFailure(failure.errorMessage));
    }, (filters) async {
      if (filters.isEmpty) {
        emit(FiltersEmpty());
      } else {
        // await Future.delayed(const Duration(milliseconds: 200), (){
        //
        // });
        emit(FiltersSuccess(filters));
      }
    });
  }
}
