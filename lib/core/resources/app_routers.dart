import 'package:free_palestine/features/business_logic/news/news_cubit.dart';
import 'package:free_palestine/features/data/local/cities_list.dart';
import 'package:free_palestine/features/data/models/news_model.dart';
import 'package:free_palestine/features/presentation/views/cities/cities_screen.dart';
import 'package:free_palestine/features/presentation/views/cities/show_city_screen.dart';
import 'package:free_palestine/features/presentation/views/cotts/cotts_screen.dart';
import 'package:free_palestine/features/presentation/views/history/history_screen.dart';
import 'package:free_palestine/features/presentation/views/home/home_screen.dart';
import 'package:free_palestine/features/presentation/views/news/news_screen.dart';
import 'package:free_palestine/features/presentation/views/news/show_news_screen.dart';
import 'package:free_palestine/features/presentation/views/questions/questions_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String home = "/home";
  static const String questions = "/questions";
  static const String boyCotts = "/boyCotts";
  static const String cities = "/cities";
  static const String showCity = "/showCity";
  static const String showNews = "/showNews";
  static const String news = "/news";
  static const String history = "/history";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
        case Routes.questions:
        return MaterialPageRoute(builder: (_) => const QuestionsScreen());
      case Routes.boyCotts:
        return MaterialPageRoute(builder: (_) => const CottsScreen());
      case Routes.cities:
        return MaterialPageRoute(builder: (_) => const CitiesScreen());
      case Routes.showCity:
        final city = settings.arguments as CityModel;
        return MaterialPageRoute(builder: (_) => ShowCityScreen(city: city));
      case Routes.history:
        return MaterialPageRoute(builder: (_) => const HistoryScreen());
      case Routes.news:
        return MaterialPageRoute(builder: (_) => const NewsScreen());
      case Routes.showNews:
        final news = settings.arguments as NewsModel;
        return MaterialPageRoute(builder: (_) => ShowNewsScreen(news: news));
      default:
        return _buildUndefinedRoute();
    }
  }

  static Route<dynamic> _buildUndefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('No route'),
        ),
        body: const Center(child: Text('No route')),
      ),
    );
  }
}
