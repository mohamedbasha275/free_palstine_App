import 'package:flutter/material.dart';
import 'package:free_palestine/core/resources/app_colors.dart';
import 'package:free_palestine/core/resources/app_constants.dart';
import 'package:free_palestine/core/resources/values_manager.dart';

class CustomSnackBar extends SnackBar {
  CustomSnackBar({
    super.key,
    required String message,
    required BuildContext context,
    Widget? action,
    Color bgColor = AppColors.success,
    Color textColor = AppColors.white,
    int speedTime = AppConstants.snackBarSpeedTime,
  }) : super(
          duration: Duration(milliseconds: speedTime),
          backgroundColor: bgColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(AppSize.s20),
              topLeft: Radius.circular(AppSize.s20),
            ),
          ),
          content: Row(
            mainAxisAlignment: (action != null)
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.center,
            children: [
              Text(
                message,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: textColor,
                    ),
                textAlign: TextAlign.center,
              ),
              if (action != null) action,
            ],
          ),
        );
}

void showMessageSnackBar(
  BuildContext context, {
  required String message,
  Widget? action,
  Color bgColor = AppColors.success,
  Color textColor = AppColors.white,
  int speedTime = AppConstants.snackBarSpeedTime,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    CustomSnackBar(
      message: message,
      context: context,
      action: action,
      bgColor: bgColor,
      textColor: textColor,
      speedTime: speedTime,
    ),
  );
}
