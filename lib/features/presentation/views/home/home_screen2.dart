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
    return GradientBackground(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.topRight,
              height: context.screenHeight *0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/back.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: context.screenHeight *0.16),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.8),
                  ),
                  child: Text('#فلسطين-قضيتي',style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: AppColors.white,
                  )),
                ),
              ),
            ),
            Container(
              height: context.screenHeight * 0.6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              padding: EdgeInsets.only(top: 16),
              margin: EdgeInsets.only(top: context.screenHeight *0.35),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buildGestureDetector(context,
                            image: 'assets/images/history.png',
                            title: 'تاريخ فلسطين',
                            route: Routes.cities),
                        buildGestureDetector(context,
                            image: 'assets/images/palestine.png',
                            title: 'مدن فلسطين',
                            route: Routes.cities),
                      ],
                    ),
                    30.heightSizedBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buildGestureDetector(context,
                            image: 'assets/images/cott.png',
                            title: 'المقاطعات',
                            route: Routes.boyCotts),
                        buildGestureDetector(context,
                            image: 'assets/images/quiz.png',
                            title: 'اختبر معلوماتك',
                            route: Routes.questions),
                      ],
                    ),
                    20.heightSizedBox,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector buildGestureDetector(BuildContext context,
      {required title, required image, required route}) {
    return GestureDetector(
      onTap: () {
        pushRoute(context, route);
      },
      child: Container(
        width: context.screenWidth * 0.4,
        decoration: BoxDecoration(
          //color: const Color.fromRGBO(65, 128, 64, 1),
          color: Color.fromRGBO(220, 248, 255, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(image,width: 110,),
            ),
            // 10.heightSizedBox,
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontSize: FontSize.s20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
