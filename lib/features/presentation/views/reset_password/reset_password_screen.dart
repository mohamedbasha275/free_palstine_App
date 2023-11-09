// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:free_palestine/core/extension/extensions.dart';
// import 'package:free_palestine/core/helper_functions/route_navigation.dart';
// import 'package:free_palestine/core/resources/app_assets.dart';
// import 'package:free_palestine/core/resources/app_colors.dart';
// import 'package:free_palestine/core/resources/app_fonts.dart';
// import 'package:free_palestine/core/resources/app_routers.dart';
// import 'package:free_palestine/core/resources/values_manager.dart';
// import 'package:free_palestine/core/validations/validations.dart';
// import 'package:free_palestine/features/business_logic/auth/auth_cubit.dart';
// import 'package:free_palestine/features/presentation/common/custom_button.dart';
// import 'package:free_palestine/features/presentation/common/custom_form_field.dart';
// import 'package:free_palestine/features/presentation/common/loading_form.dart';
// import 'package:free_palestine/features/presentation/common/no_app_bar.dart';
// import 'package:free_palestine/features/presentation/common/show_snackBar.dart';
//
// class ResetPasswordScreen extends StatefulWidget {
//   const ResetPasswordScreen({super.key});
//
//   @override
//   State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
// }
//
// class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
//   bool isLoading = false;
//   TextEditingController email = TextEditingController();
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Directionality(
//       textDirection: TextDirection.rtl,
//       child: Scaffold(
//         appBar: const NoAppBar(),
//         body: BlocListener<AuthCubit, AuthState>(
//           listener: (context, state) {
//             if (state is ResetPasswordFailure) {
//               setState(() {
//                 isLoading = false;
//               });
//               showMessageSnackBar(
//                 context,
//                 message: state.errorMessage,
//                 bgColor: AppColors.reset,
//               );
//             } else if (state is ResetPasswordSuccess) {
//               setState(() {
//                 isLoading = false;
//               });
//               showMessageSnackBar(
//                 context,
//                 message: state.message,
//               );
//             }
//           },
//           child: Center(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Form(
//                 key: _formKey,
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       const SizedBox(height: AppSize.s40),
//                       // Image.asset(
//                       //   ImageAssets.onBoarding3,
//                       //   height: 200,
//                       // ),
//                       20.heightSizedBox,
//                       Text(
//                         'إستعادة كلمة المرور',
//                         style:
//                             Theme.of(context).textTheme.displayLarge!.copyWith(
//                                   fontSize: FontSize.s30,
//                                 ),
//                       ),
//                       Text(
//                         'قم بكتابة بريدك لإستعادة كلمة المرور',
//                         style: Theme.of(context).textTheme.bodyMedium!.copyWith(
//                               color: Theme.of(context).primaryColorLight,
//                               fontSize: FontSize.s16,
//                             ),
//                         textAlign: TextAlign.center,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           TextButton(
//                             onPressed: () {
//                               pushAndRemoveRoute(context, Routes.login);
//                             },
//                             style: ButtonStyle(
//                                 padding:
//                                     MaterialStateProperty.all(EdgeInsets.zero)),
//                             child: Text(
//                               'عودة لتسجيل الدخول',
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .bodyMedium!
//                                   .copyWith(
//                                     color: Theme.of(context).primaryColor,
//                                     fontSize: FontSize.s16,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                               textAlign: TextAlign.center,
//                             ),
//                           ),
//                         ],
//                       ),
//                       CustomFormField(
//                           controller: email,
//                           validator: validateEmail,
//                           type: TextInputType.emailAddress,
//                           label: 'البريد'),
//                       const SizedBox(
//                         height: 30,
//                       ),
//                       isLoading
//                           ? const LoadingForm()
//                           : SizedBox(
//                               width: context.screenWidth,
//                               child: CustomButton(
//                                 function: () => () async {
//                                   if (_formKey.currentState!.validate()) {
//                                     // Validate the form before proceeding
//                                     setState(() {
//                                       isLoading = true;
//                                     });
//                                     BlocProvider.of<AuthCubit>(context)
//                                         .resetPassword(
//                                       email: email.text,
//                                     );
//                                   }
//                                 },
//                                 padding: 16,
//                                 radius: 16,
//                                 backGroundColor: Theme.of(context).primaryColor,
//                                 child: Text(
//                                   'إرسال الرابط',
//                                   style: Theme.of(context)
//                                       .textTheme
//                                       .labelLarge!
//                                       .copyWith(
//                                         color: AppColors.white,
//                                         fontSize: FontSize.s18,
//                                       ),
//                                 ),
//                               ),
//                             ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
