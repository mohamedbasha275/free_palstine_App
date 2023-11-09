import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:free_palestine/core/resources/app_colors.dart';
import 'package:free_palestine/core/resources/values_manager.dart';

class LoadingForm extends StatelessWidget {
  final Color? backgroundColor;
  final Color loaderColor;

  const LoadingForm({
    Key? key,
    this.backgroundColor,
    this.loaderColor = AppColors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s5),
            color: backgroundColor ?? Theme.of(context).primaryColor,
          ),
          padding: const EdgeInsets.all(AppPadding.p18), // Consolidated padding
          child: SpinKitDualRing(
            color: loaderColor,
            size: 50.0,
            duration: const Duration(milliseconds: 800),
          ),
        ),
    );
  }
}
