import 'package:flutter/material.dart';
import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/core/resources/app_strings.dart';
import 'package:free_palestine/core/resources/values_manager.dart';

class LoadingWidget extends StatelessWidget {
  final String loadingMessage;
  final Color? loaderColor;
  final Color? textColor;
  final bool fullScreen;

  const LoadingWidget({
    Key? key,
    this.loadingMessage = AppStrings.loading,
    this.loaderColor,
    this.textColor,
    this.fullScreen = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(loaderColor ?? Theme.of(context).primaryColor)),
          const SizedBox(height: AppSize.s10),
          Text(
            loadingMessage,
            style: TextStyle(fontSize: FontSize.s16, color: textColor ?? Theme.of(context).textTheme.titleSmall!.color),
          ),
        ],
      ),
    );

    return fullScreen
        ? SizedBox(height: context.screenHeight, child: content)
        : content;
  }
}
