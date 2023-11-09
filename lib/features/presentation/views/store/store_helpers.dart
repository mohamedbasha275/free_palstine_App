
import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/resources/app_assets.dart';
import 'package:free_palestine/features/presentation/views/store/avatars_widget.dart';
import 'package:free_palestine/features/presentation/views/store/borders_widget.dart';
import 'package:free_palestine/features/presentation/views/store/packages_widget.dart';
import 'package:free_palestine/features/presentation/views/store/stars_widget.dart';
import 'package:flutter/material.dart';

GestureDetector topBarItem(BuildContext context, {required int index,required int selectedIndex,function,image}) {
  return GestureDetector(
    onTap: function,
    child: Container(
      width: 75,
      height: 95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Theme.of(context).canvasColor,
            selectedIndex == index
                ? Theme.of(context).disabledColor
                : Theme.of(context).hoverColor,
          ],
        ),
      ),
      child: Image.asset(image),
    ),
  );
}

double getMargin(int index,BuildContext context) {
  switch (index) {
    case 0:
      return context.screenWidth * 0.73;
    case 1:
      return context.screenWidth * 0.50;
    case 2:
      return context.screenWidth * 0.28;
    case 3:
      return context.screenWidth * 0.05;
    default:
      return context.screenWidth * 0.73;
  }
}

Widget getContentForSelectedIndex(int selectedIndex) {
  switch (selectedIndex) {
    case 0:
      return const AvatarsWidget();
    case 1:
      return const BordersWidget();
    case 2:
      return const PackagesWidget();
    case 3:
      return const StarsWidget();
    default:
      return Container();
  }
}