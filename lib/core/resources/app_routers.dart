import 'package:free_palestine/features/presentation/views/friends_options/friends_options_screen.dart';
import 'package:free_palestine/features/presentation/views/landing/landing_screen.dart';
import 'package:free_palestine/features/presentation/views/profile/profile_screen.dart';
import 'package:free_palestine/features/presentation/views/questions/questions_screen.dart';
import 'package:free_palestine/features/presentation/views/room/friends_room_screen.dart';
import 'package:free_palestine/features/presentation/views/room/join_room_screen.dart';
import 'package:free_palestine/features/presentation/views/room/random_room_screen.dart';
import 'package:free_palestine/features/presentation/views/room/room_playing_screen.dart';
import 'package:free_palestine/features/presentation/views/room/room_result_screen.dart';
import 'package:free_palestine/features/presentation/views/room/room_settings_screen.dart';
import 'package:free_palestine/features/presentation/views/room/room_start_screen.dart';
import 'package:free_palestine/features/presentation/views/settings/settings_screen.dart';
import 'package:free_palestine/features/presentation/views/store/store_screen.dart';
import 'package:flutter/material.dart';
import 'package:free_palestine/features/presentation/views/contact_us/contact_us.dart';
import 'package:free_palestine/features/presentation/views/home/home_screen.dart';
import 'package:free_palestine/features/presentation/views/login/login_screen.dart';
import 'package:free_palestine/features/presentation/views/register/register_screen.dart';

class Routes {
  static const String home = "/home";
  static const String questions = "/questions";






  static const String login = "/login";
  static const String register = "/register";
  static const String contactUs = "/contactUs";
  static const String landingScreen = "/landingScreen";
  static const String profile = "/profile";
  static const String roomScreen = "/roomScreen";
  static const String settings = "/settings";
  static const String store = "/store";
  static const String randomRoomScreen = "/randomRoomScreen";
  static const String friendsRoomScreen = "/friendsRoomScreen";
  static const String roomSettingsScreen = "/roomSettingsScreen";
  static const String friendsOptionsScreen = "/friendsOptionsScreen";
  static const String joinRoomScreen = "/joinRoomScreen";
  static const String roomStartScreen = "/roomStartScreen";
  static const String roomPlayingScreen = "/roomPlayingScreen";
  static const String roomResultScreen = "/roomResultScreen";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
        case Routes.questions:
        return MaterialPageRoute(builder: (_) => const QuestionsScreen());



      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.register:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case Routes.contactUs:
        return MaterialPageRoute(builder: (_) => const ContactUsScreen());
      case Routes.landingScreen:
        return MaterialPageRoute(builder: (_) => const LandingScreen());
      case Routes.profile:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case Routes.friendsRoomScreen:
        return MaterialPageRoute(builder: (_) => const FriendsRoomScreen());
      case Routes.settings:
        return MaterialPageRoute(builder: (_) => const SettingsScreen());
      case Routes.store:
        return MaterialPageRoute(builder: (_) => const StoreScreen());
      case Routes.randomRoomScreen:
        return MaterialPageRoute(builder: (_) => const RandomRoomScreen());
      case Routes.roomSettingsScreen:
        return MaterialPageRoute(builder: (_) => const RoomSettingsScreen());
      case Routes.friendsOptionsScreen:
        return MaterialPageRoute(builder: (_) => const FriendsOptionsScreen());
      case Routes.joinRoomScreen:
        return MaterialPageRoute(builder: (_) => const JoinRoomScreen());
      case Routes.roomStartScreen:
        return MaterialPageRoute(builder: (_) => const RoomStartScreen());
      case Routes.roomPlayingScreen:
        return MaterialPageRoute(builder: (_) => const RoomPlayingScreen());
        case Routes.roomResultScreen:
        return MaterialPageRoute(builder: (_) => const RoomResultScreen());
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
