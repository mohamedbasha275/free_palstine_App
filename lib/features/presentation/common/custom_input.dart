import 'package:free_palestine/core/extension/extensions.dart';
import 'package:flutter/material.dart';
import 'package:free_palestine/core/resources/values_manager.dart';

class CustomInput extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType type;
  final String? Function(String?)? validator;
  final String label;
  final IconData? suffix;
  final VoidCallback? suffixPressed;
  final bool isPassword;
  final Color? startColor;
  final Color? endColor;
  final double? width;
  final bool? topMargin;

  const CustomInput({required this.controller,
    required this.type,
    this.suffix,
    this.suffixPressed,
    this.validator,
    this.startColor,
    this.endColor,
    this.width,
    this.isPassword = false,
    this.topMargin = true,
    required this.label,
    Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme
        .of(context)
        .canvasColor;
    final dividerColor = Theme
        .of(context)
        .dividerColor;
    final screenWidth = context.screenWidth * 0.85;
    return Column(
      children: [
        if(topMargin == true)
        const SizedBox(height: AppSize.s30),
        SizedBox(
          width: width ?? screenWidth,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  startColor ?? primaryColor,
                  endColor ?? dividerColor,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(9),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: label,
                labelStyle: Theme
                    .of(context)
                    .textTheme
                    .headlineSmall,
                suffixIcon: suffix != null
                    ? IconButton(
                  onPressed: suffixPressed,
                  icon: Icon(
                    suffix,
                  ),
                )
                    : null,
                fillColor: Colors.transparent,
                // set this to transparent
                filled: false,
                border: const OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9),
                  borderSide: BorderSide(
                    width: 1,
                    style: BorderStyle.solid,
                    color: Theme
                        .of(context)
                        .splashColor,
                  ),
                ),
                contentPadding: const EdgeInsets.all(AppSize.s16),
              ),
              style: Theme
                  .of(context)
                  .textTheme
                  .headlineSmall,
              obscureText: isPassword,
              keyboardType: type,
              validator: validator,
              controller: controller,
            ),
          ),
        ),
      ],
    );
  }
}
