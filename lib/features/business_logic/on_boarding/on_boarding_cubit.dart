import 'package:bloc/bloc.dart';
import 'package:free_palestine/core/di/service_locator.dart';
import 'package:free_palestine/core/resources/app_assets.dart';
import 'package:free_palestine/core/resources/app_strings.dart';
import 'package:free_palestine/core/shared_preferences/app_prefs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:free_palestine/features/data/models/boarding_model.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());

  static OnBoardingCubit get(context) => BlocProvider.of(context);
  bool isLast = false;
  List<BoardingModel> boardingPages = [
    BoardingModel(
      image: JsonAssets.onBoarding1,
      title: 'العب الان مع الأصدقاء , يمكنك اختيار خصم عشوائي!',
    ),
    BoardingModel(
      image: JsonAssets.onBoarding2,
      title: 'يمكنك الان جمع النقاط واستخدامها في تغيير الافاتار!',
    ),
    BoardingModel(
      image: JsonAssets.onBoarding3,
      title: 'اطلع علي احصائياتك !',
    ),
  ];

  void changePage({required int index}) {
    if (index == boardingPages.length - 1) {
      isLast = true;
    } else {
      isLast = false;
    }
    emit(OnBoardingChangePageState());
  }

  Future<void> setOnBoardingViewed() async {
    AppPreferences appPreferences = getIt.get<AppPreferences>();
    await appPreferences.setOnBoardingScreenViewed();
  }
}
