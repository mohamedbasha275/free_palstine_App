import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/resources/app_assets.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/core/resources/values_manager.dart';
import 'package:free_palestine/features/presentation/common/custom_button.dart';
import 'package:free_palestine/features/presentation/common/gradient_background.dart';
import 'package:free_palestine/features/presentation/common/top_bar.dart';
import 'package:free_palestine/features/presentation/widgets/room_member_item.dart';
import 'package:free_palestine/features/presentation/widgets/room_search_item.dart';
import 'package:flutter/material.dart';

class RandomRoomScreen extends StatelessWidget {
  const RandomRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> ll = ['boy.png', 'woman.png','girl.png', ''];
    return GradientBackground(
      child: Column(
        children: [
          30.heightSizedBox,
          const TopBar(isPlaying: true),
          30.heightSizedBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'اللعب مع ',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontSize: FontSize.s27,
                    ),
              ),
              Text(
                'خصم عشوائي',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontSize: FontSize.s27,
                  color: Theme.of(context).shadowColor,
                    ),
              ),
            ],
          ),
          30.heightSizedBox,
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
                  // CustomButton(
                  //   function: () {},
                  //   title: 'التالي',
                  //   icon: ImageAssets.arrow,
                  //   showIconNextToText: true,
                  // ),
                  // 20.heightSizedBox,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
