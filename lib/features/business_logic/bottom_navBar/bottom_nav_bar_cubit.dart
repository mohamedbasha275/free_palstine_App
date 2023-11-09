import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_palestine/core/resources/app_strings.dart';
part 'bottom_nav_bar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(BottomNavBarInitial());
  int currentIndex = 0;
  List<Widget> tabs = [
    // const MainTab(),
    // const ProfileTab(),
    // const ProfileTab(),
    // const SettingsTab(),
  ];
  List<BottomNavigationBarItem> items =  [
    BottomNavigationBarItem(
      icon: const Icon(Icons.home_outlined),
      label: AppStrings.home,
    ),
    BottomNavigationBarItem(
      icon: const Icon(Icons.favorite_border),
      label: AppStrings.favourite,
    ),
    BottomNavigationBarItem(
      icon: const Icon(Icons.person_2_outlined),
      label: AppStrings.profile,
    ), BottomNavigationBarItem(
      icon: const Icon(Icons.settings),
      label:AppStrings.settings,
    ),
  ];
  // changeIndex function
  void changeIndex({required int index}) {
    currentIndex = index;
    emit(BottomNavBarInitial());
  }
}
