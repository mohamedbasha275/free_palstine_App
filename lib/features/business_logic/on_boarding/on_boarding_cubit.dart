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
      image: ImageAssets.onBoarding1,
      title: 'فلسطين التاريخ',
      body: 'أعرف كل حاجة عن وطنك و حدوده الجغرافية ، وعلشان محدش يغشك في التاريخ ففلسطين التاريخ',
    ),
    BoardingModel(
      image: ImageAssets.onBoarding2,
      title: 'أختبر معلوماتك',
      body: 'أختبر معلوماتك التاريخية والجغرافية والدينية عن فلسطين ف أكتر من ١٠٠٠ سؤال',
    ),
    BoardingModel(
      image: ImageAssets.onBoarding3,
      title: 'استمرار المقاطعة',
      body: 'إحنا بنقاطع علشان نعرفهم إن مهما كان المميزات كتير بس دم أخواتنا أغلي ومش هنتخلي عنهم ولو بأقل حاجة',
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
