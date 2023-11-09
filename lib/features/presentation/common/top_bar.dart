import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/helper_functions/route_navigation.dart';
import 'package:free_palestine/core/resources/app_assets.dart';
import 'package:free_palestine/core/resources/app_colors.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/core/resources/app_routers.dart';
import 'package:flutter/material.dart';
import 'package:free_palestine/core/resources/values_manager.dart';

class TopBar extends StatelessWidget {
  final bool isPlaying;
  const TopBar({super.key,this.isPlaying = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {
              pushRoute(context, Routes.store);
            },
            child: Stack(
              children: [
                Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Theme.of(context).splashColor,
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Theme.of(context).primaryColor,
                          Theme.of(context).hoverColor.withOpacity(0.96),
                        ],
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset('assets/images/dollar.png',
                              width: 25, height: 25, fit: BoxFit.cover,),
                          5.widthSizedBox,
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text('2000',style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                              fontSize: FontSize.s22,
                              color: AppColors.nearBlack,
                            ),),
                          ),
                        ],
                      ),
                    )),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Theme.of(context).splashColor,
                      borderRadius: BorderRadius.circular(40)),
                  child: Icon(Icons.shopping_cart_sharp,
                      color: Theme.of(context).primaryColor, size: 25),
                ),
              ],
            ),
          ),
          isPlaying ? IconButton(
            onPressed: () {
              pushRoute(context, Routes.landingScreen);
            },
            icon: Image.asset(
              ImageAssets.close,
              fit: BoxFit.cover,
            ),
            iconSize: AppSize.s44,
          ):
          IconButton(
            onPressed: () {
              pushRoute(context, Routes.settings);
            },
            icon: Image.asset(
              ImageAssets.settings,
              fit: BoxFit.cover,
            ),
            iconSize: AppSize.s44,
          ),
        ],
      ),
    );
  }
}
