import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/helper_functions/route_navigation.dart';
import 'package:free_palestine/core/resources/app_assets.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/core/resources/app_routers.dart';
import 'package:free_palestine/core/resources/values_manager.dart';
import 'package:free_palestine/features/presentation/common/custom_button.dart';
import 'package:free_palestine/features/presentation/common/custom_input.dart';
import 'package:free_palestine/features/presentation/common/gradient_background.dart';
import 'package:free_palestine/features/presentation/common/top_bar.dart';
import 'package:flutter/material.dart';

class JoinRoomScreen extends StatelessWidget {
  const JoinRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController code = TextEditingController();
    return GradientBackground(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          50.heightSizedBox,
          const TopBar(),
          50.heightSizedBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'إنضمام إلي ',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontSize: FontSize.s27,
                    ),
              ),
              Text(
                'غرفة',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    fontSize: FontSize.s27,
                    color: Theme.of(context).shadowColor),
              ),
            ],
          ),
          50.heightSizedBox,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'اكتب رمز الغرفة :',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontSize: FontSize.s27,
                    ),
                  ),
                  10.heightSizedBox,
                  CustomInput(
                    controller: code,
                    type: TextInputType.text,
                    label: '',
                    startColor: Theme.of(context).canvasColor.withOpacity(0.5),
                    topMargin: false,
                    endColor: Theme.of(context).canvasColor.withOpacity(0.5),
                  ),
                  30.heightSizedBox,
                  CustomButton(
                      width: context.screenWidth * 0.85,
                      function: () {},
                      title: 'التالي',
                      icon: ImageAssets.arrow,
                      showIconNextToText: true,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
