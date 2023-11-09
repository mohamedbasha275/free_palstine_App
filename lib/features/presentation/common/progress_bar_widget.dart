import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProgressBarWidget extends StatelessWidget {
  final double progress;
  final int remainingTime;

  const ProgressBarWidget(
      {Key? key, required this.progress, required this.remainingTime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'متبقي: $remainingTime ث',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
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
            margin: const EdgeInsets.only(top: 5),
          ),
          animateFromLastPercent: true,
          animation: true,
          barRadius: const Radius.circular(20),
        ),
      ],
    );
  }
}
