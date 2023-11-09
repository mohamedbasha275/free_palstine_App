import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/helper_functions/route_navigation.dart';
import 'package:free_palestine/core/resources/app_assets.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/core/resources/app_routers.dart';
import 'package:free_palestine/core/resources/values_manager.dart';
import 'package:free_palestine/features/presentation/common/custom_button.dart';
import 'package:free_palestine/features/presentation/common/gradient_background.dart';
import 'package:free_palestine/features/presentation/common/top_bar.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Column(
        children: [
          50.heightSizedBox,
          const TopBar(),
          10.heightSizedBox,
          Image.asset(
            ImageAssets.landing,
            fit: BoxFit.cover,
            height: AppSize.s260,
          ),
          30.heightSizedBox,
          CustomButton(
            function: () {
              pushRoute(context, Routes.randomRoomScreen);
            },
            title: 'اللعب مع خصم عشوائي',
            icon: ImageAssets.search,
            showIconNextToText: true,
            titleSize: FontSize.s20,
            height: context.screenHeight * 0.1,
            iconSize: AppSize.s35,
          ),
          30.heightSizedBox,
          CustomButton(
            function: () => pushRoute(context, Routes.friendsOptionsScreen),
            title: 'اللعب مع الأصدقاء',
            icon: ImageAssets.friends,
            showIconNextToText: true,
            titleSize: FontSize.s20,
            height: context.screenHeight * 0.1,
            iconSize: AppSize.s35,
          ),
        ],
      ),
    );
  }
}
