import 'dart:async';
import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/helper_functions/route_navigation.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/core/resources/app_routers.dart';
import 'package:free_palestine/features/presentation/common/custom_button.dart';
import 'package:free_palestine/features/presentation/common/custom_input.dart';
import 'package:free_palestine/features/presentation/common/gradient_background.dart';
import 'package:free_palestine/features/presentation/common/progress_bar_widget.dart';
import 'package:free_palestine/features/presentation/common/top_bar.dart';
import 'package:free_palestine/features/presentation/widgets/room_member_playing_item.dart';
import 'package:flutter/material.dart';

class RoomPlayingScreen extends StatefulWidget {
  const RoomPlayingScreen({super.key});

  @override
  State<RoomPlayingScreen> createState() => _RoomPlayingScreenState();
}

class _RoomPlayingScreenState extends State<RoomPlayingScreen> {
  List<String> ll = [
    'boy.png',
    'woman.png',
    'girl.png',
    'boy.png',
    'woman.png',
    'girl.png'
  ];
  int remainingTime = 120;
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
          progress = remainingTime / 120;
        });
      }
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  TextEditingController boy = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: SingleChildScrollView(
        child: Column(
          children: [
            30.heightSizedBox,
            const TopBar(isPlaying: true),
            10.heightSizedBox,
            SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: ll.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return RoomMemberPlayingItem(member: ll[index]);
                },
              ),
            ),
            5.heightSizedBox,
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProgressBarWidget(
                      progress: progress, remainingTime: remainingTime),
                  10.heightSizedBox,
                  Center(
                    child: Text('حرف ال “ ت “',style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontSize: FontSize.s27,
                    ),),
                  ),
                  10.heightSizedBox,
                  boxItem(context, label: 'ولد :', controller: boy),
                  boxItem(context, label: 'بنت :', controller: boy),
                  boxItem(context, label: 'حيوان :', controller: boy),
                  boxItem(context, label: 'نبات :', controller: boy),
                  boxItem(context, label: 'جماد :', controller: boy),
                  boxItem(context, label: 'دولة / مدينة :', controller: boy),
                  20.heightSizedBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButton(
                        function: () {
                          pushRoute(context, Routes.roomResultScreen);
                        },
                        title: 'انتهاء',
                        width: context.screenWidth * 0.4,
                      ),
                      CustomButton(
                        function: () {},
                        title: 'انسحاب',
                        width: context.screenWidth * 0.4,
                      ),
                    ],
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

  Column boxItem(BuildContext context,
      {required String label, required TextEditingController controller}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: context.screenWidth * 0.2,
              child: Text(
                label,
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontSize: FontSize.s22,
                    ),
              ),
            ),
            CustomInput(
              controller: controller,
              type: TextInputType.text,
              label: '',
              startColor: Theme.of(context).canvasColor.withOpacity(0.5),
              topMargin: false,
              endColor: Theme.of(context).canvasColor.withOpacity(0.5),
              width: context.screenWidth * 0.7,
            ),
          ],
        ),
        10.heightSizedBox,
      ],
    );
  }
}
