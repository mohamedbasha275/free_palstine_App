import 'package:flutter/material.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/core/resources/values_manager.dart';

class CustomFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType type;
  final String? Function(String?)? validator;
  final String label;
  final IconData? suffix;
  final Function? suffixPressed;
  final bool isPassword;

  const CustomFormField(
      {required this.controller,
      required this.type,
      this.suffix,
      this.suffixPressed,
      this.validator,
      this.isPassword = false,
      required this.label,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: AppSize.s30),
        TextFormField(
          decoration: InputDecoration(
            labelText: label,
            labelStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontFamily: FontConstants.iBMFontFamily,
                ),
            suffixIcon: suffix != null
                ? IconButton(
                    onPressed:
                        suffixPressed != null ? () => suffixPressed!() : null,
                    icon: Icon(
                      suffix,
                    ),
                  )
                : null,
            fillColor: Theme.of(context).splashColor,
            filled: true,
            border: const OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                width: 1,
                style: BorderStyle.solid,
                color: Theme.of(context).secondaryHeaderColor,
              ),
            ),
            contentPadding: const EdgeInsets.all(AppSize.s16),
          ),
          obscureText: isPassword,
          keyboardType: type,
          validator: validator,
          controller: controller,
        ),
      ],
    );
  }
}

class CustomTextAreaField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String label;

  const CustomTextAreaField(
      {required this.controller,
      this.validator,
      required this.label,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        fillColor: Theme.of(context).splashColor,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            width: 1,
            color: Color.fromRGBO(161, 227, 216, 1),
            style: BorderStyle.solid,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            width: 1,
            color: Color.fromRGBO(161, 227, 216, 1),
            style: BorderStyle.solid,
          ),
        ),
        contentPadding: const EdgeInsets.all(AppPadding.p16),
      ),
      validator: validator,
      maxLines: 10,
    );
  }
}
