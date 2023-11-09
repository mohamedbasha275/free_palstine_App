import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:free_palestine/core/helper_functions/route_navigation.dart';
import 'package:free_palestine/core/resources/app_routers.dart';
import 'package:free_palestine/core/resources/values_manager.dart';
import 'package:free_palestine/features/data/models/poet_model.dart';

class RoomMemberItem extends StatelessWidget {
  final String member;

  const RoomMemberItem({Key? key, required this.member}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: Theme.of(context).primaryColor.withOpacity(0.25),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/$member'),
            10.heightSizedBox,
            Text(
              member,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontSize: FontSize.s20,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
