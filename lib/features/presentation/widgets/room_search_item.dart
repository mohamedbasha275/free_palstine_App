import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:free_palestine/core/helper_functions/route_navigation.dart';
import 'package:free_palestine/core/resources/app_routers.dart';
import 'package:free_palestine/core/resources/values_manager.dart';
import 'package:free_palestine/features/data/models/poet_model.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class RoomSearchItem extends StatelessWidget {

  const RoomSearchItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color:Theme.of(context).primaryColor.withOpacity(0.25),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const SpinKitPouringHourGlassRefined(
            //const SpinKitDualRing(
            //const SpinKitWaveSpinner(
            // const SpinKitFadingCircle(
            //const SpinKitThreeInOut(
            //const SpinKitThreeBounce(
            //const SpinKitCircle(
            const SpinKitDualRing(
              color: Colors.orangeAccent,
              size: 60.0,
              duration: Duration(seconds: 1),
            ),
            20.heightSizedBox,
            Text(
              'جاري البحث...',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(
                fontSize: FontSize.s20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
