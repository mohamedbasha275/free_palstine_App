import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:free_palestine/features/data/models/news_model.dart';
import 'package:free_palestine/features/data/repositories/news_repo.dart';
part 'news_state.dart';


class NewsCubit extends Cubit<NewsState> {
  final NewsRepo newsRepo;
  NewsCubit(this.newsRepo) : super(NewsInitial());

  // fetch News
  Future<void> fetchNews() async {
    emit(NewsLoading());
    var result = await newsRepo.fetchNews();
    result.fold((failure) {
      emit(NewsFailure(failure.errorMessage));
    }, (news) async {
      if (news.isEmpty) {
        emit(NewsEmpty());
      } else {
        emit(NewsSuccess(news));
      }
    });
  }
  Future<void> fetchAllNews() async {
    emit(NewsLoading());
    var result = await newsRepo.fetchAllNews();
    result.fold((failure) {
      emit(NewsFailure(failure.errorMessage));
    }, (news) async {
      if (news.isEmpty) {
        emit(NewsEmpty());
      } else {
        emit(NewsSuccess(news));
      }
    });
  }
}
