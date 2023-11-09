import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/helper_functions/route_navigation.dart';
import 'package:free_palestine/core/resources/app_assets.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/core/resources/app_routers.dart';
import 'package:free_palestine/core/resources/values_manager.dart';
import 'package:free_palestine/core/validations/validations.dart';
import 'package:free_palestine/features/presentation/common/custom_button.dart';
import 'package:free_palestine/features/presentation/common/custom_input.dart';
import 'package:free_palestine/features/presentation/common/gradient_background.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // must be in cubit
  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;

  void changePasswordVisibility() {
    setState(() {
      isPassword = !isPassword;
      suffix = isPassword
          ? Icons.visibility_outlined
          : Icons.visibility_off_outlined;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                30.heightSizedBox,
                Image.asset(
                  ImageAssets.loginImg,
                  fit: BoxFit.cover,
                  height: AppSize.s200,
                ),
                20.heightSizedBox,
                Text(
                  'تسجيل الاشتراك',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                CustomInput(
                  controller: name,
                  validator: validateName,
                  type: TextInputType.name,
                  label: 'الاسم',
                ),
                CustomInput(
                  controller: email,
                  validator: validateEmail,
                  type: TextInputType.emailAddress,
                  label: 'البريد الالكتروني',
                ),
                CustomInput(
                  controller: password,
                  type: TextInputType.visiblePassword,
                  suffix: suffix,
                  isPassword: isPassword,
                  validator: validatePassword,
                  suffixPressed: () => changePasswordVisibility(),
                  label: 'كلمة المرور',
                ),
                CustomInput(
                  controller: confirmPassword,
                  type: TextInputType.visiblePassword,
                  suffix: suffix,
                  isPassword: isPassword,
                  suffixPressed: () => changePasswordVisibility(),
                  label: ' تأكيد كلمة المرور',
                  validator: (value) => validateConfirmPassword(value, password: password.text),
                ),
                30.heightSizedBox,
                CustomButton(
                  function: () => pushRoute(context, Routes.login),
                  title: 'تسجيل الاشتراك',
                ),
                10.heightSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'لديك حساب بالفعل؟ قم',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        fontFamily: FontConstants.iBMFontFamily,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    TextButton(
                      onPressed: () {
                        pushRoute(context, Routes.login);
                      },
                      child: Text(
                        'بتسجيل الدخول',
                        style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          fontFamily: FontConstants.iBMFontFamily,
                          color: Theme.of(context).hintColor
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // Center the children of the Row
                  children: [
                    Expanded(
                      // Makes the divider take the available space
                      child: Divider(
                        color: Theme.of(context).highlightColor,
                        thickness: 1.0,
                        endIndent: 20,
                      ),
                    ),
                    Text(
                      'أو',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Expanded(
                      child: Divider(
                        color: Theme.of(context).highlightColor,
                        thickness: 1.0,
                        indent: 20,
                      ),
                    ),
                  ],
                ),
                20.heightSizedBox,
                CustomButton(
                  function: () => pushRoute(context, Routes.login),
                  title: 'دخول باستخدام جوجل',
                  icon: ImageAssets.google,
                  showIconNextToText: true,
                  startColor: Theme
                      .of(context)
                      .canvasColor,
                  endColor: Theme
                      .of(context)
                      .dividerColor,
                  textColor: Theme
                      .of(context)
                      .secondaryHeaderColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
