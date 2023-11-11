import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/resources/app_colors.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/core/resources/app_strings.dart';
import 'package:free_palestine/core/resources/values_manager.dart';
import 'package:free_palestine/features/data/models/boarding_model.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardingItem extends StatelessWidget {
  final BoardingModel model;

  const OnBoardingItem({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: context.screenHeight * 0.5,
          width: context.screenWidth,
          decoration: BoxDecoration(
            color: Colors.deepOrangeAccent.withOpacity(0.2),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Image.asset(
              model.image,
            ),
          ),
        ),
        20.heightSizedBox,
        Column(
          children: [
            Text(
              model.title,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontSize: FontSize.s25),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                model.body,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(fontSize: FontSize.s22,color: AppColors.nearBlack),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
