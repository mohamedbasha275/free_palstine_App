import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/resources/app_assets.dart';
import 'package:free_palestine/core/resources/app_colors.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/features/presentation/common/arrow_painter.dart';
import 'package:free_palestine/features/presentation/common/gradient_background.dart';
import 'package:free_palestine/features/presentation/views/store/store_helpers.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      title: 'المتجر',
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            20.heightSizedBox,
            Container(
              width: 200,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Theme.of(context).canvasColor,
                    Theme.of(context).indicatorColor,
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/dollar.png'),
                  Container(
                    width: 1,
                    color: AppColors.black.withOpacity(0.15),
                  ),
                  Text(
                    '1,700',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontSize: FontSize.s17,
                        ),
                  ),
                  Container(),
                ],
              ),
            ),
            20.heightSizedBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                topBarItem(context, index: 0,selectedIndex: selectedIndex,function: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                },image: ImageAssets.friends),
                topBarItem(context, index: 1,selectedIndex: selectedIndex,function: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                },image: 'assets/images/borders.png'),
                topBarItem(context, index: 2,selectedIndex: selectedIndex,function: () {
                  setState(() {
                    selectedIndex = 2;
                  });
                },image: 'assets/images/packages.png'),
                topBarItem(context, index: 3,selectedIndex: selectedIndex,function: () {
                  setState(() {
                    selectedIndex = 3;
                  });
                },image: 'assets/images/stars.png'),
              ],
            ),
            20.heightSizedBox,
            Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: getMargin(selectedIndex,context)),
                  child: CustomPaint(
                    size: const Size(50, 35),
                    painter:
                        ArrowPainter(color: Theme.of(context).canvasColor.withOpacity(0.75)),
                  ),
                ),
                getContentForSelectedIndex(selectedIndex),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
