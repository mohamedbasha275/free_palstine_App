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

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
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
                50.heightSizedBox,
                Image.asset(
                  ImageAssets.loginImg,
                  fit: BoxFit.cover,
                  height: AppSize.s230,
                ),
                30.heightSizedBox,
                Text(
                  'تسجيل الدخول',
                  style: Theme.of(context).textTheme.headlineMedium,
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
                30.heightSizedBox,
                CustomButton(
                  function: () => pushAndRemoveRoute(context, Routes.landingScreen),
                  title: 'تسجيل الدخول',
                ),
                10.heightSizedBox,
                TextButton(
                  onPressed: () {
                  //  pushRoute(context, Routes.resetPasswordScreen);
                  },
                  child: Text(
                    'نسيت كلمة المرور؟',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          fontFamily: FontConstants.iBMFontFamily,
                      color: Theme.of(context).shadowColor,
                        ),
                    textAlign: TextAlign.center,
                  ),
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
