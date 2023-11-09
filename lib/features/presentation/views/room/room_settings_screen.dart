import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/helper_functions/route_navigation.dart';
import 'package:free_palestine/core/resources/app_assets.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/core/resources/app_routers.dart';
import 'package:free_palestine/features/presentation/common/custom_button.dart';
import 'package:free_palestine/features/presentation/common/gradient_background.dart';
import 'package:free_palestine/features/presentation/common/top_bar.dart';
import 'package:flutter/material.dart';

class RoomSettingsScreen extends StatefulWidget {
  const RoomSettingsScreen({super.key});

  @override
  State<RoomSettingsScreen> createState() => _RoomSettingsScreenState();
}

class _RoomSettingsScreenState extends State<RoomSettingsScreen> {
  TextEditingController roomCode = TextEditingController();
  List<int> roomLength = [2,3,4,5,6,7,8];
  List<int> roundsLength = [2,4,6,8];
  int selectedLength = 2;
  int selectedRounds = 2;
  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: SingleChildScrollView(
        child: Column(
          children: [
            30.heightSizedBox,
            const TopBar(),
            30.heightSizedBox,
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'اختر حجم الغرفه :',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontSize: FontSize.s27,
                    ),
                  ),
                  10.heightSizedBox,
                  GridView.builder(
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.1,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      crossAxisCount: 5,
                    ),
                    itemCount: roomLength.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedLength = roomLength[index];
                            selectedRounds = 0;
                            roundsLength = [];
                            for(int i = 1;i <= 28 ; i++){
                              if(i % selectedLength == 0){
                                roundsLength.add(i);
                              }
                            }
                            selectedRounds = roundsLength[0];
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
                                selectedLength == roomLength[index] ? Theme.of(context).splashColor :
                                Theme.of(context).dividerColor,
                              ],
                            ),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                10.heightSizedBox,
                                Text(
                                  '${roomLength[index]}',
                                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                                      fontSize: FontSize.s28,
                                    ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),

                  40.heightSizedBox,
                  Text(
                    'اختر عدد الجولات :',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontSize: FontSize.s27,
                    ),
                  ),
                  10.heightSizedBox,
                  GridView.builder(
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.1,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      crossAxisCount: 5,
                    ),
                    itemCount: roundsLength.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedRounds = roundsLength[index];
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
                                selectedRounds == roundsLength[index] ? Theme.of(context).splashColor :
                                Theme.of(context).dividerColor,
                              ],
                            ),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                10.heightSizedBox,
                                Text(
                                  '${roundsLength[index]}',
                                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                                    fontSize: FontSize.s28,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  50.heightSizedBox,
                  Center(
                    child: CustomButton(
                      width: context.screenWidth,
                      function: () {
                        // print('room length:$selectedLength');
                        // print('room rounds:$selectedRounds');
                        // print('room code:${roomCode.text}');
                        pushRoute(context, Routes.friendsRoomScreen);
                      },
                      title: 'التالي',
                      icon: ImageAssets.arrow,
                      showIconNextToText: true,
                    ),
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
