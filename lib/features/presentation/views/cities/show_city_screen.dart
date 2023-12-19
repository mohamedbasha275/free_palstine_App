import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/helper_functions/route_navigation.dart';
import 'package:free_palestine/core/resources/app_colors.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/core/resources/app_routers.dart';
import 'package:free_palestine/core/resources/values_manager.dart';
import 'package:free_palestine/features/data/local/cities_list.dart';
import 'package:free_palestine/features/presentation/common/gradient_background.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ShowCityScreen extends StatelessWidget {
  final CityModel city;

  const ShowCityScreen({super.key, required this.city});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.topRight,
              height: context.screenHeight * 0.35,
              decoration: BoxDecoration(
                image: DecorationImage(
                 // image: AssetImage('assets/images/cityback.png'),
                  image: AssetImage(city.image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Image.asset('assets/images/back.png'),
                          ),
                          IconButton(
                            onPressed: () {
                              pushAndRemoveRoute(context, Routes.home);
                            },
                            icon: Image.asset('assets/images/home.png'),
                          ),
                        ],
                      ),
                    ),
                    // Container(
                    //   padding: EdgeInsets.all(10),
                    //   margin: EdgeInsets.only(top: context.screenHeight * 0.12),
                    //   decoration: BoxDecoration(
                    //     color: Colors.black.withOpacity(0.8),
                    //   ),
                    //   child: Text(
                    //     city.name,
                    //     style: Theme.of(context)
                    //         .textTheme
                    //         .headlineMedium!
                    //         .copyWith(
                    //           color: AppColors.white,
                    //         ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            Container(
              height: context.screenHeight * 0.64,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              margin: EdgeInsets.only(top: context.screenHeight * 0.31),
              padding: EdgeInsets.all(16),
              child: SizedBox(
                height: context.screenHeight * 0.66,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 60,
                      child: Column(
                        children: [
                          10.heightSizedBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'نبذة سريعة :',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                      fontSize: FontSize.s22,
                                      color: Colors.brown,
                                    ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  IconButton(
                                    onPressed: () async {
                                      _launchInWebView(city.moreInfoUrl);
                                    },
                                    icon: const Icon(
                                      Icons.info,
                                      size: 35,
                                      color: Colors.cyan,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () async {
                                      _launchMap(city.mapUrl);
                                    },
                                    icon: const Icon(
                                      Icons.location_pin,
                                      size: 35,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            10.heightSizedBox,
                            Text(city.info,
                                style:
                                    Theme.of(context).textTheme.headlineSmall),
                            20.heightSizedBox,
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchInWebView(url) async {
    if (!await launchUrl(Uri.parse(url), mode: LaunchMode.inAppWebView)) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _launchMap(url) async {
    if (!await launchUrl(Uri.parse(url),
        mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }
}
