import 'dart:async';

import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/helper_functions/route_navigation.dart';
import 'package:free_palestine/core/resources/app_assets.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/core/resources/app_routers.dart';
import 'package:free_palestine/features/presentation/common/custom_button.dart';
import 'package:free_palestine/features/presentation/common/gradient_background.dart';
import 'package:free_palestine/features/presentation/common/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class RoomStartScreen extends StatefulWidget {
  const RoomStartScreen({super.key});

  @override
  State<RoomStartScreen> createState() => _RoomStartScreenState();
}

class _RoomStartScreenState extends State<RoomStartScreen> {
  TextEditingController roomCode = TextEditingController();
  List<String> letters2 = [
    'ذ',
    'ء',
    'ؤ',
    'ر',
    'ى',
    'ة',
    'و',
    'ز',
    'ظ',
    'د',
    'ش',
    'س',
    'ي',
    'ب',
    'ل',
    'ا',
    'ت',
    'ن',
    'م',
    'ك',
    'ط',
    'ض',
    'ص',
    'ث',
    'ق',
    'ف',
    'غ',
    'ع',
    'هـ',
    'خ',
    'ح',
    'ج'
  ];
  String selectedLetter = '';
  int remainingTime = 10;
  late Timer timer;
  double progress = 1.0;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (remainingTime == 0) {
        timer.cancel();
      } else {
        setState(() {
          remainingTime--;
          progress = remainingTime / 10;
        });
      }
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<String> letters = letters2.reversed.toList();
    return GradientBackground(
      child: SingleChildScrollView(
        child: Column(
          children: [
            30.heightSizedBox,
            const TopBar(isPlaying: true),
            20.heightSizedBox,
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'اختر حرف للبدء :',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontSize: FontSize.s27,
                        ),
                  ),
                  20.heightSizedBox,
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'متبقي: $remainingTime ث',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              fontSize: FontSize.s15,
                            ),
                      ),
                    ),
                  ),
                  10.heightSizedBox,
                  LinearPercentIndicator(
                    lineHeight: 15.0,
                    percent: progress,
                    backgroundColor: Theme.of(context).dividerColor,
                    linearGradient: LinearGradient(colors: [
                      Theme.of(context).primaryColor,
                      Theme.of(context).splashColor,
                    ]),
                    clipLinearGradient: true,
                    isRTL: true,
                    widgetIndicator: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Theme.of(context).primaryColor,
                            Theme.of(context).splashColor,
                          ],
                          begin: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      margin: EdgeInsets.only(top: 5),
                    ),
                    animateFromLastPercent: true,
                    animation: true,
                    barRadius: const Radius.circular(20),
                  ),
                  30.heightSizedBox,
                  GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.5,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 11,
                    ),
                    itemCount: letters.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedLetter = letters[index];
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Theme.of(context).canvasColor,
                                selectedLetter == letters[index]
                                    ? Theme.of(context).splashColor
                                    : Theme.of(context).dividerColor,
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              letters[index],
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(
                                    fontSize: FontSize.s15,
                                  ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  40.heightSizedBox,
                  CustomButton(
                    function: () {
                      pushRoute(context, Routes.roomPlayingScreen);
                    },
                    title: 'بدء',
                    icon: ImageAssets.arrow,
                    showIconNextToText: true,
                    width: context.screenWidth,
                  ),
                  20.heightSizedBox,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
