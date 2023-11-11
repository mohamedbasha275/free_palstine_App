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
import 'package:percent_indicator/percent_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardController = PageController();
  int currentPage = 1;

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: BlocProvider(
        create: (context) => OnBoardingCubit(),
        child: BlocConsumer<OnBoardingCubit, OnBoardingState>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = OnBoardingCubit.get(context);
            return Container(
              //padding: const EdgeInsets.all(AppPadding.p30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: PageView.builder(
                      physics: const BouncingScrollPhysics(),
                      controller: boardController,
                      onPageChanged: (index) {
                        cubit.changePage(index: index);
                        setState(() {
                          currentPage = index +1;
                        });
                      },
                      itemBuilder: (context, index) =>
                          OnBoardingItem(model: cubit.boardingPages[index]),
                      itemCount: cubit.boardingPages.length,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                          dotColor: Colors.grey,
                          activeDotColor: Color.fromRGBO(65, 128, 64, 1),
                          dotHeight: AppSize.s10,
                          expansionFactor: AppSize.s4,
                          dotWidth: AppSize.s10,
                          spacing: AppSize.s5,
                        ),
                        count: cubit.boardingPages.length,
                      ),
                      CircularPercentIndicator(
                        radius: 35,
                        center: TextButton(
                          style: ButtonStyle(
                            enableFeedback: false,
                            overlayColor: MaterialStateProperty.all(
                              Colors.transparent
                            )
                          ),
                          onPressed: () {
                            if (cubit.isLast) {
                              pushAndRemoveRoute(context, Routes.home);
                              cubit.setOnBoardingViewed();
                            } else {
                              boardController.nextPage(
                                duration: const Duration(
                                  milliseconds:
                                      AppConstants.onBoardingPageSpeed,
                                ),
                                curve: Curves.fastLinearToSlowEaseIn,
                              );
                            }
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: (cubit.isLast)
                                  ? Color.fromRGBO(65, 128, 64, 1)
                                  : Colors.deepOrangeAccent.withOpacity(0.4),
                            ),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        percent: currentPage / cubit.boardingPages.length,
                        backgroundColor: Colors.grey.withOpacity(0.5),
                        progressColor: cubit.isLast ?  Color.fromRGBO(65, 128, 64, 1): Colors.cyan,
                        animateFromLastPercent: true,

                        animation: true,
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
