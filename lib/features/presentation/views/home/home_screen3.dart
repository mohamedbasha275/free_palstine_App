import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/helper_functions/route_navigation.dart';
import 'package:free_palestine/core/resources/app_assets.dart';
import 'package:free_palestine/core/resources/app_colors.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/core/resources/app_routers.dart';
import 'package:free_palestine/core/resources/values_manager.dart';
import 'package:free_palestine/features/presentation/common/custom_button.dart';
import 'package:free_palestine/features/presentation/common/gradient_background.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea( // Ensure content is within the safe area
          child: Column(
            children: [
              buildHeader(context),
              buildMainContent(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    // Header with image and title
    return Container(
      alignment: Alignment.topRight,
      height: context.screenHeight * 0.4,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/back.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(top: context.screenHeight * 0.16),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.8),
          ),
          child: Text(
            '#فلسطين-قضيتي',
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildMainContent(BuildContext context) {
    // Main content with buttons
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        padding: EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            buildGridButton(
              context,
                image: 'assets/images/history.png',
                title: 'تاريخ فلسطين',
                route: Routes.cities,
            ),
            buildGridButton(
              context,
                image: 'assets/images/palestine.png',
                title: 'مدن فلسطين',
                route: Routes.cities,
            ),
            buildGridButton(
              context,
              image: 'assets/images/cott.png',
              title: 'المقاطعات',
              route: Routes.boyCotts,
            ),
            buildGridButton(
              context,
              image: 'assets/images/quiz.png',
              title: 'اختبر معلوماتك',
              route: Routes.questions,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildGridButton(BuildContext context, {required String title, required String image, required String route}) {
    // Button template for the grid
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, route),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(220, 248, 255, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, width: context.screenWidth * 0.25),
            SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
    );
  }
}
