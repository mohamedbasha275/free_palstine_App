import 'package:free_palestine/features/presentation/common/custom_button.dart';
import 'package:free_palestine/features/presentation/common/custom_text_area.dart';
import 'package:free_palestine/features/presentation/common/gradient_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/resources/app_colors.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/core/resources/app_strings.dart';
import 'package:free_palestine/core/resources/values_manager.dart';
import 'package:free_palestine/core/validations/validations.dart';
import 'package:free_palestine/features/business_logic/auth/auth_cubit.dart';
import 'package:free_palestine/features/presentation/common/loading_form.dart';
import 'package:free_palestine/features/presentation/common/show_snackBar.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  bool isLoading = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _bodyController = TextEditingController();
  String selectedOption = 'contact_admin';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: GradientBackground(
        title: 'اتصل بنا',
        child: BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is ContactUsFailure) {
              setState(() {
                isLoading = false;
              });
              showMessageSnackBar(
                context,
                message: state.errorMessage,
                bgColor: AppColors.reset,
              );
            } else if (state is ContactUsSuccess) {
              setState(() {
                isLoading = false;
                _bodyController.text = '';
              });
              showMessageSnackBar(
                context,
                message: state.message,
              );
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.p16),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(
                    //       horizontal: AppPadding.p20),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       Text(
                    //         'موضوع الرسالة:',
                    //         style: Theme.of(context)
                    //             .textTheme
                    //             .titleMedium!
                    //             .copyWith(
                    //               fontWeight: FontWeight.w700,
                    //             ),
                    //       ),
                    //       CustomDropDown(
                    //         selectedOption: selectedOption,
                    //         function: () => (value) {
                    //           setState(() {
                    //             selectedOption = value!;
                    //           });
                    //         },
                    //         itemsList: const [
                    //           {
                    //             'name': 'رسالة للإدارة',
                    //             'value': 'contact_admin',
                    //           },
                    //           {
                    //             'name': 'طلب إضافة قصيدة',
                    //             'value': 'add_poem',
                    //           }
                    //         ],
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // const SizedBox(
                    //   height: AppSize.s20,
                    // ),
                    20.heightSizedBox,
                    Text('اكتب رسالتك:',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(fontSize: FontSize.s25)),
                    20.heightSizedBox,
                    CustomTextAreaField(
                      controller: _bodyController,
                      label: AppStrings.message,
                      validator: validateMessage,
                    ),
                    const SizedBox(height: AppSize.s24),
                    isLoading
                        ? const LoadingForm()
                        : SizedBox(
                            width: context.screenWidth,
                            child: CustomButton(
                              function: () {},
                              title: 'إرسال',
                            ),
                          ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
