import 'dart:math';

import 'package:flutter/material.dart';
import 'package:free_palestine/core/di/service_locator.dart';
import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/helper_functions/route_navigation.dart';
import 'package:free_palestine/core/resources/app_colors.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/core/resources/app_routers.dart';
import 'package:free_palestine/core/shared_preferences/app_prefs.dart';
import 'package:free_palestine/features/data/local/questions_list.dart';
import 'package:free_palestine/features/presentation/common/custom_button.dart';
import 'package:free_palestine/features/presentation/common/gradient_background.dart';
import 'package:free_palestine/features/presentation/common/loading_widget.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/percent_indicator.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  List<QuestionModel> questions = questionsList;

  int currentQuestion = 0;
  int selectedAnswerIndex = -1;
  bool checkNow = false;
  bool showCheck = true;
  int degree = 0;

  bool isEnd = false;
  bool showResult = false;
  bool isLoading = true;

  Color _getBorderColor(bool isTrue, int index) {
    if (!checkNow) {
      return (index == selectedAnswerIndex) ? Colors.blue : Colors.blueGrey;
    } else {
      if (isTrue) return Colors.green;
      if (index == selectedAnswerIndex) return Colors.red;
      return Colors.blueGrey;
    }
  }

  Widget _getIcon(bool isTrue, int index) {
    if (checkNow) {
      if (isTrue)
        return Icon(
          Icons.check,
          color: Colors.green,
          size: 30,
        );
      if (index == selectedAnswerIndex)
        return Icon(
          Icons.close_sharp,
          color: Colors.red,
          size: 30,
        );
    }
    return Container();
  }

  int exams = 0;
  int points = 0;
  AppPreferences appPreferences = getIt.get<AppPreferences>();
  @override
  void initState() {
    super.initState();
    questions = List<QuestionModel>.from(questionsList)..shuffle(Random());
    questions = questions.take(3).toList();
    getDegree();
    Future.delayed(const Duration(seconds: 1)).then((value) {
      setState(() {
        isLoading = false;
      });
    });
  }
  Future<void> getDegree() async{
    List<int> degree = await appPreferences.getExamPoints();
    print('degree:$degree');
    setState(() {
      exams = degree[0];
      points = degree[1];
    });
  }
  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      // title: 'اختبر معلوماتك',
      child: Stack(
        children: [
          Container(
            alignment: Alignment.topRight,
            height: context.screenHeight *0.32,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/questions.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      pushAndRemoveRoute(context, Routes.home);
                    },
                    icon: Image.asset('assets/images/home.png'),
                  ),
                ),
                20.heightSizedBox,
                Center(
                  child: Column(
                    children: [
                      Text(
                        'بالمعرفة تنهض الأمم',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              color: AppColors.nearWhiteGreen,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      10.heightSizedBox,
                      Container(
                        width: context.screenWidth * 0.8,
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: context.screenWidth * 0.37,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    'assets/images/exam.png',
                                    width: 40,
                                  ),
                                  10.widthSizedBox,
                                  Column(
                                    children: [
                                      Text('اختبارات',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineSmall),
                                      Text(
                                        '$exams',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(
                                              color: Colors.cyan,
                                              fontSize: 22,
                                            ),
                                      ),
                                    ],
                                  ),
                                  5.widthSizedBox,
                                ],
                              ),
                            ),
                            Container(
                              width: 1,
                              height: 70,
                              color: AppColors.grey,
                            ),
                            Container(
                              width: context.screenWidth * 0.37,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    'assets/images/cup.png',
                                    width: 40,
                                  ),
                                  10.widthSizedBox,
                                  Column(
                                    children: [
                                      Text('نقاط',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineSmall),
                                      Text('$points',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineSmall!
                                              .copyWith(
                                                color: Colors.deepOrangeAccent,
                                                fontSize: 22,
                                              )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 240),
            padding: const EdgeInsets.all(16.0),
            child: isLoading
                ? const LoadingWidget()
                : Container(
                    child: (!showResult)
                        ? SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    'السؤال: ${(currentQuestion + 1)} / ${questions.length}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                          fontSize: FontSize.s18,
                                        ),
                                  ),
                                ),
                                LinearPercentIndicator(
                                  lineHeight: 20.0,
                                  percent:
                                      (currentQuestion + 1) / questions.length,
                                  backgroundColor: Colors.grey.withOpacity(0.5),
                                  progressColor: Color.fromRGBO(65, 128, 64, 1),
                                  isRTL: true,
                                  animateFromLastPercent: true,
                                  animation: true,
                                  barRadius: const Radius.circular(20),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  questions[currentQuestion].title,
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                                SizedBox(height: 20),
                                ...questions[currentQuestion]
                                    .answers
                                    .asMap()
                                    .entries
                                    .map(
                                  (entry) {
                                    int idx = entry.key;
                                    var answer = entry.value;
                                    return AnswerTile(
                                      index: idx,
                                      answer: answer.content,
                                      borderColor:
                                          _getBorderColor(answer.isTrue, idx),
                                      icon: _getIcon(answer.isTrue, idx),
                                      isSelected: idx == selectedAnswerIndex,
                                      onTap: () {
                                        if (!checkNow) {
                                          setState(() {
                                            selectedAnswerIndex = idx;
                                          });
                                        }
                                      },
                                    );
                                  },
                                ).toList(),
                                10.heightSizedBox,
                                if (showCheck)
                                  Center(
                                    child: CustomButton(
                                      height: 60,
                                      width: context.screenWidth,
                                      function: () {
                                        if (selectedAnswerIndex > -1) {
                                          setState(() {
                                            checkNow = true;
                                            showCheck = !showCheck;
                                            if (questions[currentQuestion]
                                                    .answers[selectedAnswerIndex]
                                                    .isTrue ==
                                                true) {
                                              degree += 1;
                                            }
                                          });
                                        }
                                      },
                                      title: 'تحقق',
                                      startColor: Color.fromRGBO(65, 128, 64, 1),
                                      endColor: Color.fromRGBO(65, 128, 64, 1),
                                      textColor: AppColors.white,
                                    ),
                                  ),
                                if (!showCheck)
                                  Center(
                                    child: CustomButton(
                                      width: context.screenWidth,
                                      height: 60,
                                      function: () async{
                                        if(isEnd){
                                          await appPreferences.setExamPoints(points: degree);
                                        }
                                        setState(() {
                                          if (!isEnd) {
                                            currentQuestion += 1;
                                            checkNow = false;
                                            selectedAnswerIndex = -1;
                                            showCheck = !showCheck;
                                            if ((currentQuestion + 1) ==
                                                questions.length) {
                                              isEnd = true;
                                            }
                                          } else {
                                            showResult = true;
                                            points += degree;
                                            exams +=1;
                                          }
                                        });
                                      },
                                      title: isEnd ? 'عرض الدرجة' : 'التالي',
                                      startColor: Color.fromRGBO(65, 128, 64, 1),
                                      endColor: Color.fromRGBO(65, 128, 64, 1),
                                      textColor: AppColors.white,
                                    ),
                                  ),
                                10.heightSizedBox,
                              ],
                            ),
                        )
                        : resultWidget(context),
                  ),
          ),
        ],
      ),
    );
  }

  Widget resultWidget(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Lottie.asset('assets/json/fire.json',fit: BoxFit.cover),
        ),
        Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildItem(context,
                        title: 'كل الأسئلة',
                        myNum: '${questions.length}',
                        color: AppColors.nearBlack),
                    buildItem(context,
                        title: 'نقاط مضافة', myNum: '+${degree}', color: AppColors.info),
                  ],
                ),
                30.heightSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildItem(context,
                        title: 'إجابات صحيحة',
                        myNum: '${degree}',
                        color: AppColors.success),
                    buildItem(context,
                        title: 'إجابات خاطئة',
                        myNum: '${questions.length - degree}',
                        color: AppColors.failure),
                  ],
                ),
                30.heightSizedBox,
                CustomButton(
                  function: () {
                    pushAndRemoveRoute(context, Routes.questions);
                  },
                  title: 'تجربة مرة أخري',
                  startColor: AppColors.info,
                  endColor: AppColors.info,
                  textColor: AppColors.white,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container buildItem(BuildContext context,
      {required title, required myNum, required color}) {
    return Container(
      width: context.screenWidth * 0.4,
      height: 150,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            myNum,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontSize: FontSize.s20, color: color),
          ),
          10.heightSizedBox,
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontSize: FontSize.s20),
          ),
        ],
      ),
    );
  }
}

class AnswerTile extends StatelessWidget {
  final int index;
  final String answer;
  final Color borderColor;
  final bool isSelected;
  final VoidCallback onTap;
  final Widget icon;

  const AnswerTile({
    Key? key,
    required this.index,
    required this.answer,
    required this.borderColor,
    required this.isSelected,
    required this.onTap,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: context.screenWidth,
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: borderColor,
                style: BorderStyle.solid,
                width: 2,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color.fromRGBO(65, 128, 64, 1),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${index + 1}',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  color: AppColors.white,
                                ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      answer,
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: Colors.blueGrey,
                              ),
                    ),
                  ],
                ),
                icon,
              ],
            ),
          ),
        ),
        10.heightSizedBox,
      ],
    );
  }
}
