import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
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
          //CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(loaderColor ?? Theme.of(context).primaryColor)),
          SpinKitFoldingCube(
            color: loaderColor ?? Color.fromRGBO(65, 128, 64, 1),
            size: 50.0,
            duration: const Duration(milliseconds: 800),
          ),
          const SizedBox(height: AppSize.s15),
          Text(
            loadingMessage,
            style: TextStyle(fontSize: FontSize.s22, color: textColor ?? Color.fromRGBO(65, 128, 64, 1)),
          ),
        ],
      ),
    );

    return fullScreen
        ? SizedBox(height: context.screenHeight, child: content)
        : content;
  }
}
