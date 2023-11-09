import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/resources/app_colors.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/core/resources/values_manager.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback function;
  final Color? startColor;
  final Color? endColor;
  final String title;
  final double? titleSize;
  final String? icon;
  final double? iconSize;
  final double? height;
  final double? width;
  final bool showIconNextToText;
  final Color? textColor;

  const CustomButton({
    required this.function,
    this.startColor,
    this.endColor,
    required this.title,
    this.icon,
    this.height,
    this.width,
    this.titleSize,
    this.iconSize,
    this.textColor,
    this.showIconNextToText = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final splashColor = Theme.of(context).splashColor;
    const appTextColor = AppColors.nearBlack;
    final screenWidth = context.screenWidth * 0.85;
    final screenHeight = context.screenHeight * 0.07;
    return ElevatedButton(
      onPressed: function,
      style: ButtonStyle(
        padding: MaterialStateProperty.all(EdgeInsets.zero),
        fixedSize: MaterialStateProperty.all(
            Size(width ?? screenWidth, height ?? screenHeight)),
        overlayColor: MaterialStateProperty.all(endColor ?? splashColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
        ),
      ),
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              startColor ?? primaryColor,
              endColor ?? splashColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(9),
        ),
        child: Container(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: showIconNextToText
                ? MainAxisAlignment.center
                : MainAxisAlignment.spaceAround,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontSize: titleSize ?? FontSize.s18,
                  color: textColor ?? appTextColor,
                ),
              ),
              if (showIconNextToText) 10.widthSizedBox,
              if (icon != null)
                Image.asset(icon!, height: iconSize ?? AppSize.s20),
            ],
          ),
        ),
      ),
    );
  }
}
