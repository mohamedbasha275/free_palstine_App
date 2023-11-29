import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/helper_functions/route_navigation.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/core/resources/app_routers.dart';
import 'package:free_palestine/features/presentation/common/no_app_bar.dart';
import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  final Widget child;
  final String title;
  const GradientBackground({super.key, required this.child,this.title = ''});
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: title =='' ? const NoAppBar() : AppBar(
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildBackButton(context),
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontSize: FontSize.s27,
                  ),
                ),
                _buildHomeButton(context),
              ],
            ),
          ),
        ),
        body: Container(
          width: context.screenWidth,
          height: context.screenHeight,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                // Theme.of(context).focusColor,
                // Theme.of(context).primaryColorLight,
                // Theme.of(context).primaryColorDark,
                // Theme.of(context).primaryColorDark,
                //Color.fromRGBO(220, 248, 255, 1),
                //Color.fromRGBO(220, 248, 255, 1),
                Color.fromRGBO(255, 255, 255, 1),
                Color.fromRGBO(255, 255, 255, 1),
              ],
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
Widget _buildBackButton(BuildContext context) {
  return IconButton(
    onPressed: () {
       Navigator.of(context).pop();
    },
    icon: Icon(
      Icons.arrow_back_ios,
      color: Theme.of(context).secondaryHeaderColor,
    ),
  );
}
Widget _buildHomeButton(BuildContext context) {
  return IconButton(
    onPressed: () {
      pushRoute(context, Routes.home);
    },
    icon: Icon(
      Icons.home,
      color: Theme.of(context).secondaryHeaderColor,
      size: 32,
    ),
  );
}