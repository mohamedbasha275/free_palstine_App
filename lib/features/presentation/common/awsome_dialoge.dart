import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/resources/app_colors.dart';
import 'package:free_palestine/core/resources/app_strings.dart';
import 'package:free_palestine/core/resources/values_manager.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class AppAwesomeDialog extends StatelessWidget {
  final Function function;
  final Widget child;
  final Widget body;
  final Color background;
  final Color btnOkColor;
  final DialogType dialogType;
  final String title;
  final String btnOkText;

  const AppAwesomeDialog(
      {required this.function,
      required this.child,
      this.body = const Text(''),
      required this.background,
      required this.dialogType,
      required this.title,
      required this.btnOkText,
      required this.btnOkColor,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //width: AppSize.s150,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(background),
        ),
        onPressed: () {
          AwesomeDialog(
            context: context,
            //animType: AnimType.rightSlide,
            dialogType: dialogType,
            btnOkColor: btnOkColor,
            btnOkText: btnOkText,
            btnCancelColor: AppColors.cancel,
            btnCancelText: 'إلغاء',
            body: Center(
              child: Column(
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: AppSize.s10),
                  SizedBox(
                    width: context.screenWidth * 0.7,
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: body,
                    ),
                  ),
                ],
              ),
            ),
            btnOkOnPress: () {
              function();
            },
            btnCancelOnPress: () {},
          ).show();
        },
        child: child,
      ),
    );
  }
}
