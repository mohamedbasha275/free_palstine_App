import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/helper_functions/route_navigation.dart';
import 'package:free_palestine/core/resources/app_colors.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/core/resources/app_routers.dart';
import 'package:free_palestine/core/resources/values_manager.dart';
import 'package:free_palestine/features/data/local/cities_list.dart';
import 'package:free_palestine/features/presentation/common/gradient_background.dart';
import 'package:flutter/material.dart';

class CitiesScreen extends StatelessWidget {
  const CitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.topRight,
              height: context.screenHeight *0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/cityback.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () {
                          pushAndRemoveRoute(context, Routes.home);
                        },
                        icon: Image.asset('assets/images/home.png'),
                      ),
                    ),
                    // Container(
                    //   padding: EdgeInsets.all(10),
                    //   margin: EdgeInsets.only(top:  context.screenHeight *0.12),
                    //   decoration: BoxDecoration(
                    //     color: Colors.black.withOpacity(0.8),
                    //   ),
                    //   child: Text(
                    //     '18 مدينة فلسطينية',
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
              height: context.screenHeight *0.7,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              padding: EdgeInsets.only(top: 16),
              margin: EdgeInsets.only(top: context.screenHeight *0.26),
              child: SingleChildScrollView(
                child: GridView.builder(
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20,
                    crossAxisCount: 3,
                  ),
                  itemCount: citiesList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(AppPadding.p16),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        pushRoute(context, Routes.showCity,
                            arguments: citiesList[index]);
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          citiesList[index].image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                    // return TextButton(
                    //   onPressed: () {
                    //     pushRoute(context, Routes.showCity,arguments: citiesList[index]);
                    //   },
                    //   style: ButtonStyle(
                    //       padding: MaterialStateProperty.all(
                    //     EdgeInsets.all(1),
                    //   )),
                    //   child: Container(
                    //     alignment: Alignment.center,
                    //     decoration: BoxDecoration(
                    //       color: Color.fromRGBO(220, 248, 255, 1),
                    //       borderRadius: BorderRadius.circular(5),
                    //     ),
                    //     child: Text(
                    //       citiesList[index].name,
                    //       style: Theme.of(context).textTheme.headlineSmall,
                    //       textAlign: TextAlign.center,
                    //     ),
                    //   ),
                    // );

                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
