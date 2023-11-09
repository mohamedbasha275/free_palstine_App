import 'package:flutter/material.dart';
import 'package:free_palestine/core/resources/app_colors.dart';
import 'package:free_palestine/core/resources/values_manager.dart';
import 'package:free_palestine/features/business_logic/bottom_navBar/bottom_nav_bar_cubit.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final BottomNavBarCubit cubit;
  final List<BottomNavigationBarItem> bottomItems;

  const AppBottomNavigationBar({
    required this.cubit,
    required this.bottomItems,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(AppSize.s24),
        topLeft: Radius.circular(AppSize.s24),
      ),
      child: BottomNavigationBar(
        onTap: (index) => cubit.changeIndex(index: index),
        backgroundColor: Theme.of(context).highlightColor,
        selectedItemColor: Theme.of(context).dividerColor,
        unselectedItemColor: AppColors.grey,
        currentIndex: cubit.currentIndex,
        selectedIconTheme: const IconThemeData(size: AppSize.s30),
        selectedLabelStyle:
            const TextStyle(fontWeight: FontWeight.w500, fontSize: AppSize.s10),
        unselectedLabelStyle:
            const TextStyle(fontWeight: FontWeight.w500, fontSize: AppSize.s10),
        type: BottomNavigationBarType.fixed,
        items: bottomItems,
      ),
    );
  }
}
