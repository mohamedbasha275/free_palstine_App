import 'dart:async';
import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/resources/app_assets.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/features/presentation/common/custom_button.dart';
import 'package:free_palestine/features/presentation/common/custom_input.dart';
import 'package:free_palestine/features/presentation/common/gradient_background.dart';
import 'package:free_palestine/features/presentation/common/progress_bar_widget.dart';
import 'package:free_palestine/features/presentation/common/top_bar.dart';
import 'package:free_palestine/features/presentation/widgets/room_member_playing_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class RoomResultScreen extends StatefulWidget {
  const RoomResultScreen({super.key});

  @override
  State<RoomResultScreen> createState() => _RoomResultScreenState();
}

class _RoomResultScreenState extends State<RoomResultScreen> {
  List<String> ll = [
    'boy.png',
    'woman.png',
    'girl.png',
    'boy.png',
    'woman.png',
    'girl.png'
  ];
  List<String> members = [
    'ahmed',
    'mohamed',
    'girl',
    'ali',
    'sayed',
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
  int _current = 0;

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
                  // CarouselSlider
                  CarouselSlider(
                    items: members.map((item) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Column(
                            children: [
                              10.heightSizedBox,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/boy.png',
                                    height: 60,
                                    width: 60,
                                  ),
                                  10.widthSizedBox,
                                  Text(
                                    item,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(fontSize: FontSize.s27),
                                  ),
                                ],
                              ),
                              15.heightSizedBox,
                              boxItem(context, label: 'ولد :', result: 'boy'),
                              boxItem(context, label: 'بنت :', result: 'boy'),
                              boxItem(context, label: 'حيوان :', result: 'boy'),
                              boxItem(context, label: 'نبات :', result: 'boy'),
                              boxItem(context, label: 'جماد :', result: 'vv'),
                              boxItem(context, label: 'دولة / مدينة :', result: 'boy'),

                              10.heightSizedBox,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'مجموع النقاط :',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(
                                      fontSize: FontSize.s28,
                                    ),
                                  ),
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Theme.of(context).primaryColor,
                                          Theme.of(context).unselectedWidgetColor,
                                        ],
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        5.heightSizedBox,
                                        Text(
                                          '${30+members.indexOf(item)}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineSmall!
                                              .copyWith(
                                            color: Theme.of(context).cardColor,
                                            fontSize: FontSize.s20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              10.heightSizedBox,
                            ],
                          );
                        },
                      );
                    }).toList(),
                    options: CarouselOptions(
                      height: 510,
                      viewportFraction: 1,
                      enableInfiniteScroll: false,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: members.map((url) {
                      int index = members.indexOf(url);
                      return Container(
                        width: 20.0,
                        height: 20.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == index
                              ? Theme.of(context).splashColor
                              : Theme.of(context).secondaryHeaderColor.withOpacity(0.4),
                        ),
                      );
                    }).toList(),
                  ),
                  20.heightSizedBox,
                  CustomButton(
                    function: () {},
                    title: 'الجولة التالية',
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

  Column boxItem(BuildContext context,
      {required String label, required String result}) {
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
            Container(
              width: context.screenWidth * 0.4,
              alignment: Alignment.center,
              height: 40,
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(9),
              ),
              child: Text(
                result,
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: Theme.of(context).secondaryHeaderColor,
                ),
              ),
            ),
            SizedBox(
              width: 50,
              height: 50,
              child: Stack(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Theme.of(context).primaryColor,
                          Theme.of(context).unselectedWidgetColor,
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        5.heightSizedBox,
                        Text(
                          '10',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                color: Theme.of(context).cardColor,
                                fontSize: FontSize.s20,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 8,
                    bottom: 15,
                    // child: IconButton(
                    //   icon: Image.asset('assets/images/exam.png'),
                    //   onPressed: (){
                    //     print('mohammed');
                    //   },
                    // ),
                    child: MenuAnchor(
                      builder: (BuildContext context, MenuController controller,
                          Widget? child) {
                        return TextButton(
                          onPressed: () {
                            if (controller.isOpen) {
                              controller.close();
                            } else {
                              controller.open();
                            }
                          },
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                            EdgeInsets.zero,
                          )),
                          child: Image.asset('assets/images/exam.png'),
                        );
                      },
                      menuChildren: [
                        SizedBox(
                          width: 160,
                          child: Column(
                            children: [
                              Text(
                                'اذا كنت تعتقد الكلمة صحيحة قم باضافتها',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                      fontSize: FontSize.s18,
                                  color: Theme.of(context).secondaryHeaderColor,
                                    ),
                                textAlign: TextAlign.center,
                              ),
                              CustomButton(
                                function: () {},
                                height: 30,
                                title: 'إضافة الكلمة',
                              ),
                            ],
                          ),
                        ),
                      ],
                      style: MenuStyle(
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.all(16),
                        ),
                        alignment: Alignment.bottomRight,
                        fixedSize: MaterialStateProperty.all(Size(200, 120)),
                        backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).dividerColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            10.heightSizedBox,
          ],
        ),
        10.heightSizedBox,
      ],
    );
  }
}
