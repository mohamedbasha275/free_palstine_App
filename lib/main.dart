import 'package:free_palestine/features/business_logic/news/news_cubit.dart';
import 'package:free_palestine/features/data/repositories/news_repo.dart';
import 'package:free_palestine/features/presentation/views/cities/cities_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_palestine/core/bloc_observer/bloc_observer.dart';
import 'package:free_palestine/core/di/service_locator.dart';
import 'package:free_palestine/core/resources/app_constants.dart';
import 'package:free_palestine/core/resources/app_routers.dart';
import 'package:free_palestine/core/resources/theme_manager.dart';
import 'package:free_palestine/core/shared_preferences/app_prefs.dart';
import 'package:free_palestine/features/business_logic/auth/auth_cubit.dart';
import 'package:free_palestine/features/business_logic/theme/theme_cubit.dart';
import 'package:free_palestine/features/data/repositories/auth_repo.dart';
import 'package:free_palestine/features/presentation/views/home/home_screen.dart';
import 'package:free_palestine/features/presentation/views/news/news_screen.dart';
import 'package:free_palestine/features/presentation/views/on_boarding/on_boarding_screen.dart';

void main() async {
  await _initializeApp();
  runApp(MyApp(
    startWidget: await _getStartWidget(),
  ));
}

Future<void> _initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator();
  Bloc.observer = MyBlocObserver();
}

Future<Widget> _getStartWidget() async {
  AppPreferences appPreferences = getIt.get<AppPreferences>();
  if (await appPreferences.isOnBoardingScreenViewed()) {
    return const OnBoardingScreen();
  } else {
    return const OnBoardingScreen();
  }
}

class MyApp extends StatelessWidget {
  final Widget startWidget;

  const MyApp({Key? key, required this.startWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthCubit(getIt.get<AuthRepoImpl>())),
        BlocProvider<ThemeCubit>(
            create: (context) => ThemeCubit()..isDarkMode()),
        BlocProvider<NewsCubit>(
            create: (context) =>
                NewsCubit(getIt.get<NewsRepoImpl>())..fetchNews()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          if (state is ThemeSuccessState) {
            return MaterialApp(
              title: AppConstants.appName,
              debugShowCheckedModeBanner: false,
              theme:
                  state.themeMode == MyThemeMode.light ? lightTheme : darkTheme,
              home: startWidget,
              onGenerateRoute: RouteGenerator.getRoute,
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
