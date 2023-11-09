import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:free_palestine/features/data/models/filter_model.dart';
import 'package:free_palestine/features/data/models/poem_model.dart';
import 'package:free_palestine/features/data/models/poet_model.dart';
import 'package:free_palestine/features/data/models/short_poem_model.dart';
import 'package:free_palestine/features/data/repositories/poems_repo.dart';
part 'poems_state.dart';

class PoemsCubit extends Cubit<PoemsState> {
  final PoemsRepo poemsRepo;
  PoemsCubit(this.poemsRepo) : super(PoemsInitial());

  // fetch Poems
  Future<void> fetchPoems({String query = '',required int poetId}) async {
    emit(PoemsLoading());
    var result = await poemsRepo.fetchPoems(query: query,poetId: poetId);
    result.fold((failure) {
      emit(PoemsFailure(failure.errorMessage));
    }, (poems) async {
      if (poems.isEmpty) {
        emit(PoemsEmpty());
      } else {
        emit(PoemsSuccess(poems));
      }
    });
  }

  // show Poem
  Future<void> showPoem({required int poemId}) async {
    emit(ShowPoemLoading());
    var result = await poemsRepo.showPoem(poemId: poemId);
    result.fold((failure) {
      emit(ShowPoemFailure(failure.errorMessage));
    }, (poem) async {
      emit(ShowPoemSuccess(poem));
    });
  }
  //  saveMarkedLine
  Future<void> saveMarkedLine({required int poemId, required int lineIndex}) async {
    await poemsRepo.saveMarkedLine(poemId: poemId, lineIndex: lineIndex);
  }
  //  save Line
  Future<void> savePoemLine({required int poemId, required int lineIndex}) async {
    await poemsRepo.savePoemLine(poemId: poemId, lineIndex: lineIndex);
  }
  // removePoemLine
  Future<void> removePoemLine(
      {required int poemId, required int lineIndex}) async {
    await poemsRepo.removePoemLine(poemId: poemId, lineIndex: lineIndex);
  }
  // removePoemLines
  Future<void> removePoemLines(
      {required int poemId}) async {
    await poemsRepo.removePoemLines(poemId: poemId);
  }
}
