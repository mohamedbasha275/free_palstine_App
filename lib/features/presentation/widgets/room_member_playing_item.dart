import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:flutter/material.dart';

class RoomMemberPlayingItem extends StatelessWidget {
  final String member;

  const RoomMemberPlayingItem({Key? key, required this.member}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 75,
              child: Stack(
                children: [
                  Image.asset('assets/images/$member',height: 60,width: 60,),
                  Positioned(
                    left: 0,
                    bottom: 5,
                    child: Container(
                      width: 27,
                      height: 27,
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
                            '30',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                              color:
                              Theme.of(context).cardColor,
                              fontSize: FontSize.s13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            10.heightSizedBox,
            Text(
              member,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(
                fontSize: FontSize.s15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
