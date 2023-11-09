import 'package:flutter/material.dart';
import 'package:free_palestine/core/helper_functions/route_navigation.dart';
import 'package:free_palestine/core/resources/app_routers.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  final bool isTab;

  const MyAppBar({
    required this.title,
    Key? key,
    this.isTab = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildBackButton(context),
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
            if (!isTab) _buildHomeButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return IconButton(
      onPressed: () {
        isTab ? pushAndRemoveRoute(context, Routes.home) : Navigator.of(context).pop();
      },
      icon: Icon(
        Icons.arrow_back_ios,
        color: Theme.of(context).primaryColorLight,
      ),
    );
  }

  Widget _buildHomeButton(BuildContext context) {
    return IconButton(
      onPressed: () {
        pushAndRemoveRoute(context, Routes.home);
      },
      icon: Icon(
        Icons.home,
        size: 28,
        color: Theme.of(context).primaryColorLight,
      ),
    );
  }
}
