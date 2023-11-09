import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/helper_functions/route_navigation.dart';
import 'package:free_palestine/core/resources/app_colors.dart';
import 'package:free_palestine/core/resources/app_constants.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/core/resources/app_routers.dart';
import 'package:free_palestine/core/resources/values_manager.dart';
import 'package:free_palestine/features/business_logic/on_boarding/on_boarding_cubit.dart';
import 'package:free_palestine/features/presentation/common/gradient_background.dart';
import 'package:free_palestine/features/presentation/views/on_boarding/on_boarding_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardController = PageController();

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: BlocProvider(
        create: (context) => OnBoardingCubit(),
        child: BlocConsumer<OnBoardingCubit, OnBoardingState>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = OnBoardingCubit.get(context);
            return Padding(
              padding: const EdgeInsets.all(AppPadding.p30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: PageView.builder(
                      physics: const BouncingScrollPhysics(),
                      controller: boardController,
                      onPageChanged: (index) {
                        cubit.changePage(index: index);
                      },
                      itemBuilder: (context, index) =>
                          OnBoardingItem(model: cubit.boardingPages[index]),
                      itemCount: cubit.boardingPages.length,
                    ),
                  ),
                  const SizedBox(height: AppSize.s40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          pushAndRemoveRoute(context, Routes.home);
                          cubit.setOnBoardingViewed();
                        },
                        child: Text(
                          'تخطـي',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(fontSize: FontSize.s20),
                        ),
                      ),
                      SmoothPageIndicator(
                        controller: boardController,
                        effect: ExpandingDotsEffect(
                          dotColor: Theme.of(context).primaryColor.withOpacity(0.5),
                          activeDotColor: Theme.of(context).splashColor,
                          dotHeight: AppSize.s10,
                          expansionFactor: AppSize.s2,
                          dotWidth: AppSize.s20,
                          spacing: AppSize.s5,
                        ),
                        count: cubit.boardingPages.length,
                      ),
                      TextButton(
                        onPressed: () {
                          if (cubit.isLast) {
                            pushAndRemoveRoute(context, Routes.home);
                            cubit.setOnBoardingViewed();
                          } else {
                            boardController.nextPage(
                              duration: const Duration(
                                milliseconds: AppConstants.onBoardingPageSpeed,
                              ),
                              curve: Curves.fastLinearToSlowEaseIn,
                            );
                          }
                        },
                        child: Row(
                          children: [
                            Text(
                              (cubit.isLast) ? 'ابـدأ' : 'متابعة',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(
                                      fontSize: FontSize.s20,
                                      color: AppColors.white),
                            ),
                            10.widthSizedBox,
                            const Icon(Icons.arrow_forward_sharp,color: AppColors.white,),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSize.s40),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
