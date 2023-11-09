import 'package:flutter/material.dart';
import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/resources/app_assets.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/core/resources/app_strings.dart';
import 'package:free_palestine/core/resources/values_manager.dart';

class EmptyWidget extends StatelessWidget {
  final String message;

  const EmptyWidget({Key? key, this.message = AppStrings.noData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final largeLabelStyle = Theme.of(context).textTheme.labelLarge!.copyWith(
      fontSize: FontSize.s26,
    );

    final mediumTitleStyle = Theme.of(context).textTheme.titleMedium!.copyWith(
      fontSize: FontSize.s20,
    );

    return SizedBox(
      height: context.screenHeight,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImageAssets.empty),
            const SizedBox(height: AppSize.s20),
            Text('فارغة!', style: largeLabelStyle),
            const SizedBox(height: AppSize.s5),
            Text('“ $message ”', style: mediumTitleStyle),
          ],
        ),
      ),
    );
  }
}
