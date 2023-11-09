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
        Expanded(
          child: Lottie.asset(
            model.image,
          ),
        ),
        Text(
          model.title,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(fontSize: FontSize.s25),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
