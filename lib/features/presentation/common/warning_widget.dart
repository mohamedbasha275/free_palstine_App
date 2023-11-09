import 'package:flutter/material.dart';
import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/helper_functions/route_navigation.dart';
import 'package:free_palestine/core/resources/app_assets.dart';
import 'package:free_palestine/core/resources/app_colors.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/core/resources/app_routers.dart';
import 'package:free_palestine/core/resources/app_strings.dart';
import 'package:free_palestine/core/resources/values_manager.dart';
import 'package:free_palestine/features/presentation/common/custom_button.dart';

class WarningWidget extends StatelessWidget {
  final String message;

  const WarningWidget({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  ImageAssets.error,
                  width: AppSize.s100,
                ),
                const SizedBox(
                  width: AppSize.s10,
                ),
                const Text(
                  AppStrings.error,
                  style: TextStyle(
                    fontSize: FontSize.s22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSize.s20),
            const Text(
              'يوجد خطأ ما حاول لاحقاً',
              style: TextStyle(fontSize: FontSize.s18),
            ),
            const SizedBox(height: AppSize.s10),
            Text(
              message,
              style: const TextStyle(fontSize: FontSize.s18),
            ),
            const SizedBox(height: AppSize.s20),
            CustomButton(
              function: () => () {
                pushAndRemoveRoute(context, Routes.home);
              },
              title: AppStrings.backHome,
            )
          ],
        ),
      ),
    );
  }
}
