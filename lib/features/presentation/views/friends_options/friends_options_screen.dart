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

class FriendsOptionsScreen extends StatelessWidget {
  const FriendsOptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Column(
        children: [
          50.heightSizedBox,
          const TopBar(),
          100.heightSizedBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('اللعب مع ',style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontSize: FontSize.s27,
              ),),
              Text(
                'الأصدقاء',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontSize: FontSize.s27,
                  color: Theme.of(context).shadowColor
                    ),
              ),
            ],
          ),
          50.heightSizedBox,
          CustomButton(
            function: () {
              pushRoute(context, Routes.roomSettingsScreen);
            },
            title: 'إعداد غرفة',
            icon: ImageAssets.settingRoom,
            showIconNextToText: true,
            titleSize: FontSize.s20,
            height: context.screenHeight * 0.1,
            iconSize: AppSize.s35,
          ),
          30.heightSizedBox,
          CustomButton(
            function: () => pushRoute(context, Routes.joinRoomScreen),
            title: 'انضمام لغرفة',
            icon: ImageAssets.joinRoom,
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
