// import 'package:bloc/bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:free_palestine/features/data/models/poem_model.dart';
// import 'package:free_palestine/features/data/repositories/finished_poems_repo.dart';
//
// part 'finished_poems_state.dart';
//
// class FinishedPoemsCubit extends Cubit<FinishedPoemsState> {
//   final FinishedPoemsRepo finishedPoemsRepo;
//
//   FinishedPoemsCubit(this.finishedPoemsRepo) : super(FinishedPoemsInitial());
//
//   // fetch Finished Poems
//   Future<void> fetchFinishedPoems({String query = '',String type = 'all'}) async {
//     emit(FinishedPoemsLoading());
//     var result = await finishedPoemsRepo.fetchFinishedPoems(query: query,type: type);
//     result.fold((failure) {
//       emit(FinishedPoemsFailure(failure.errorMessage));
//     }, (poems) {
//       if (poems.isEmpty) {
//         emit(FinishedPoemsEmpty());
//       } else {
//         Future.delayed(const Duration(milliseconds: 200), () {
//           emit(FinishedPoemsSuccess(poems));
//         });
//       }
//     });
//   }
//   // user level
//   Future<void> userLevel() async {
//     int level = 0;
//     emit(UserLevelEmpty());
//     int backedLevel = await finishedPoemsRepo.userLevel();
//     level = backedLevel;
//     print('backedLevel:$backedLevel');
//     emit(UserLevelValued(level));
//   }
// }
