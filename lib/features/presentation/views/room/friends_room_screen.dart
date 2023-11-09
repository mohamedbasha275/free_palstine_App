import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/helper_functions/route_navigation.dart';
import 'package:free_palestine/core/resources/app_assets.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/core/resources/app_routers.dart';
import 'package:free_palestine/core/resources/values_manager.dart';
import 'package:free_palestine/features/presentation/common/custom_button.dart';
import 'package:free_palestine/features/presentation/common/gradient_background.dart';
import 'package:free_palestine/features/presentation/common/top_bar.dart';
import 'package:free_palestine/features/presentation/widgets/room_member_item.dart';
import 'package:free_palestine/features/presentation/widgets/room_search_item.dart';
import 'package:flutter/material.dart';

class FriendsRoomScreen extends StatelessWidget {
  const FriendsRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> ll = ['boy.png', 'woman.png','girl.png', ''];
    return GradientBackground(
      child: Column(
        children: [
          30.heightSizedBox,
          const TopBar(isPlaying: true),
          40.heightSizedBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'رمز الغرفة : ',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontSize: FontSize.s27,
                    ),
              ),
              Text(
                'Gmaman',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontSize: FontSize.s27,
                  color: Theme.of(context).shadowColor,
                    ),
              ),
            ],
          ),
          20.heightSizedBox,
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.06,
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 20,
                      crossAxisCount: 2,
                    ),
                    itemCount: ll.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(AppPadding.p16),
                    itemBuilder: (context, index) {
                      return ll[index] == ''
                          ? const RoomSearchItem()
                          : RoomMemberItem(member: ll[index]);
                    },
                  ),
                  20.heightSizedBox,
                  SizedBox(
                    width: context.screenWidth *0.93,
                    child: CustomButton(
                      function: () {
                        pushRoute(context, Routes.roomStartScreen);
                      },
                      title: 'بداية',
                      icon: ImageAssets.arrow,
                      showIconNextToText: true,
                    ),
                  ),
                  20.heightSizedBox,
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
