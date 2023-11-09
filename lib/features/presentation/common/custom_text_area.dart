import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/core/resources/values_manager.dart';
import 'package:flutter/material.dart';

class CustomTextAreaField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String label;

  const CustomTextAreaField(
      {required this.controller, this.validator, required this.label, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).canvasColor;
    final dividerColor = Theme.of(context).dividerColor.withOpacity(0.975);
    final thirdColor = Theme.of(context).hoverColor.withOpacity(0.96);
    final screenWidth = context.screenWidth * 0.85;
    return SizedBox(
      width: screenWidth,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              primaryColor,
              dividerColor,
              thirdColor,
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
            fillColor: Colors.transparent,
            // set this to transparent
            filled: false,
            border: const OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9),
              borderSide:  BorderSide(
                // width: 0,
                // style: BorderStyle.none,
                width: 1,
                style: BorderStyle.solid,
                color: Theme.of(context).splashColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9),
              borderSide: BorderSide(
                width: 1,
                style: BorderStyle.solid,
                color: Theme.of(context).splashColor,
              ),
            ),
            contentPadding: const EdgeInsets.all(AppSize.s16),
          ),
          style: Theme.of(context).textTheme.headlineSmall,
          validator: validator,
          controller: controller,
          maxLines: 12,
        ),
      ),
    );
  }
}
