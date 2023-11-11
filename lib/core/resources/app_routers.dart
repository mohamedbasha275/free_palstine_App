import 'package:free_palestine/features/data/local/cities_list.dart';
import 'package:free_palestine/features/presentation/views/cities/cities_screen.dart';
import 'package:free_palestine/features/presentation/views/cities/show_city_screen.dart';
import 'package:free_palestine/features/presentation/views/cotts/cotts_screen.dart';
import 'package:free_palestine/features/presentation/views/home/home_screen.dart';
import 'package:free_palestine/features/presentation/views/questions/questions_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String home = "/home";
  static const String questions = "/questions";
  static const String boyCotts = "/boyCotts";
  static const String cities = "/cities";
  static const String showCity = "/showCity";
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
