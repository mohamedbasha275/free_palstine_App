// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:free_palestine/core/extension/extensions.dart';
// import 'package:free_palestine/core/resources/app_colors.dart';
// import 'package:free_palestine/core/resources/app_fonts.dart';
// import 'package:free_palestine/core/resources/values_manager.dart';
// import 'package:free_palestine/core/validations/validations.dart';
// import 'package:free_palestine/features/business_logic/auth/auth_cubit.dart';
// import 'package:free_palestine/features/presentation/common/app_bar.dart';
// import 'package:free_palestine/features/presentation/common/custom_button.dart';
// import 'package:free_palestine/features/presentation/common/custom_form_field.dart';
// import 'package:free_palestine/features/presentation/common/loading_form.dart';
// import 'package:free_palestine/features/presentation/common/show_snackBar.dart';
//
// class ChangePasswordScreen extends StatefulWidget {
//   const ChangePasswordScreen({super.key});
//
//   @override
//   State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
// }
//
// class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
//   bool isLoading = false;
//   TextEditingController password = TextEditingController();
//   TextEditingController newPassword = TextEditingController();
//   TextEditingController confirmNewPassword = TextEditingController();
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
//   // must be in cubit
//   IconData suffix = Icons.visibility_outlined;
//   bool isPassword = true;
//
//   void changePasswordVisibility() {
//     setState(() {
//       isPassword = !isPassword;
//       suffix = isPassword
//           ? Icons.visibility_outlined
//           : Icons.visibility_off_outlined;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Directionality(
//       textDirection: TextDirection.rtl,
//       child: Scaffold(
//         appBar: const PreferredSize(
//           preferredSize: Size.fromHeight(AppSize.s70),
//           child: MyAppBar(
//             title: 'كلمة المرور',
//             isTab: false,
//           ),
//         ),
//         body: BlocListener<AuthCubit, AuthState>(
//           listener: (context, state) {
//             if (state is ChangePasswordFailure) {
//               setState(() {
//                 isLoading = false;
//               });
//               showMessageSnackBar(
//                 context,
//                 message: state.errorMessage,
//                 bgColor: AppColors.reset,
//               );
//             } else if (state is ChangePasswordSuccess) {
//               setState(() {
//                 isLoading = false;
//               });
//               showMessageSnackBar(
//                 context,
//                 message: state.message,
//               );
//             }
//           },
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Form(
//               key: _formKey,
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     const SizedBox(height: AppSize.s40),
//                     Text(
//                       'تعديل كلمة المرور',
//                       style: Theme.of(context).textTheme.displayLarge!.copyWith(
//                             color: Theme.of(context).primaryColor,
//                             fontSize: FontSize.s20,
//                           ),
//                     ),
//                     const SizedBox(height: 10),
//                     Text(
//                       'قم بتعديل كلمة مرورك  من خلال هذه الصفحة',
//                       style: Theme.of(context).textTheme.displayLarge!.copyWith(
//                             color: Theme.of(context).primaryColorLight,
//                             fontSize: FontSize.s16,
//                           ),
//                       textAlign: TextAlign.center,
//                     ),
//                     CustomFormField(
//                       controller: password,
//                       type: TextInputType.visiblePassword,
//                       suffix: suffix,
//                       isPassword: isPassword,
//                       suffixPressed: () => changePasswordVisibility(),
//                       label: 'كلمة المرور الحالية',
//                       validator: validatePassword,
//                     ),
//                     CustomFormField(
//                       controller: newPassword,
//                       type: TextInputType.visiblePassword,
//                       suffix: suffix,
//                       isPassword: isPassword,
//                       suffixPressed: () => changePasswordVisibility(),
//                       label: 'كلمة المرور الجديدة',
//                       validator: validatePassword,
//                     ),
//                     CustomFormField(
//                       controller: confirmNewPassword,
//                       type: TextInputType.visiblePassword,
//                       suffix: suffix,
//                       isPassword: isPassword,
//                       suffixPressed: () => changePasswordVisibility(),
//                       label: ' تأكيد كلمة المرور',
//                     ),
//                     const SizedBox(
//                       height: 30,
//                     ),
//                     isLoading
//                         ? const LoadingForm()
//                         : SizedBox(
//                             width: context.screenWidth,
//                             child: CustomButton(
//                               function: () => () async {
//                                 if (_formKey.currentState!.validate()) {
//                                   // Validate the form before proceeding
//                                   setState(() {
//                                     isLoading = true;
//                                   });
//                                   BlocProvider.of<AuthCubit>(context)
//                                       .changePassword(
//                                           oldPassword: password.text,
//                                           newPassword: newPassword.text,
//                                           confirmPassword:
//                                               confirmNewPassword.text);
//                                 }
//                               },
//                               padding: 12,
//                               backGroundColor: Theme.of(context).primaryColor,
//                               child: Text(
//                                 'حفظ',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .labelLarge!
//                                     .copyWith(
//                                         color: AppColors.white,
//                                         fontSize: FontSize.s18),
//                               ),
//                             ),
//                           ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
