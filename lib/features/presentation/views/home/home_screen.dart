import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/helper_functions/route_navigation.dart';
import 'package:free_palestine/core/resources/app_colors.dart';
import 'package:free_palestine/core/resources/app_routers.dart';
import 'package:free_palestine/core/resources/app_strings.dart';
import 'package:free_palestine/features/business_logic/news/news_cubit.dart';
import 'package:free_palestine/features/data/local/cities_list.dart';
import 'package:free_palestine/features/presentation/common/empty_widget.dart';
import 'package:free_palestine/features/presentation/common/gradient_background.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              30.heightSizedBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/reading.png',
                        width: 60,
                      ),
                      10.widthSizedBox,
                      Row(
                        children: [
                          Text(
                            'أهلاً بعودتك ،',
                            style:
                                TextStyle(fontSize: 22, color: Colors.grey),
                          ),
                          Icon(
                            Icons.waving_hand_rounded,
                            color: Colors.orange,
                          ),
                        ],
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      pushRoute(context, Routes.questions);
                    },
                    child: Text(
                      'أختبار الآن',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(65, 128, 64, 1))),
                  )
                ],
              ),
              BlocBuilder<NewsCubit, NewsState>(
                builder: (context, state) {
                  if (state is NewsLoading) {
                    return const CircularProgressIndicator();
                  } else if (state is NewsFailure) {
                    return Center(
                      child: Column(
                        children: [
                          Text('يوجد خطأ في تحميل الأخبار'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('يرجي التأكد من الانترنت'),
                              Icon(Icons.wifi_off),
                            ],
                          ),
                        ],
                      ),
                    );
                  } else if (state is NewsSuccess) {
                    return Column(
                      children: [
                        10.heightSizedBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'أخر الأخبار',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            TextButton(
                              onPressed: () {
                                pushRoute(context, Routes.news);
                              },
                              child: Text(
                                'عرض المزيد',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                        10.heightSizedBox,
                        SizedBox(
                          width: context.screenWidth * 0.95,
                          child: CarouselSlider.builder(
                            itemCount: state.news.length,
                            itemBuilder: (ctx, index, realIdx) {
                              return Container(
                                alignment: Alignment.bottomRight,
                                margin: const EdgeInsets.only(left: 10),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: NetworkImage(state.news[index].image!),
                                    fit: BoxFit.cover,

                                  ),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.8),
                                  ),
                                  child: Text(state.news[index].title!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                        color: AppColors.white,
                                      )),
                                ),
                              );
                            },
                            options: CarouselOptions(
                              height: 200,
                              initialPage: 0,
                              autoPlay: true,
                              autoPlayInterval: Duration(seconds: 8),
                              viewportFraction: 0.9,
                              enableInfiniteScroll: true,
                            ),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return EmptyWidget(message: AppStrings.noPoems);
                  }
                },
              ),
              10.heightSizedBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'مدن فلسطين',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () {
                      pushRoute(context, Routes.cities);
                    },
                    child: Text(
                      'عرض الكل',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      pushRoute(context, Routes.showCity,
                          arguments: citiesList[0]);
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        citiesList[0].image,
                        fit: BoxFit.cover,
                        width: context.screenWidth * 0.29,
                        height: 100,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      pushRoute(context, Routes.showCity,
                          arguments: citiesList[1]);
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        citiesList[1].image,
                        fit: BoxFit.cover,
                        width: context.screenWidth * 0.29,
                        height: 100,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      pushRoute(context, Routes.showCity,
                          arguments: citiesList[2]);
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        citiesList[2].image,
                        fit: BoxFit.cover,
                        width: context.screenWidth * 0.29,
                        height: 100,
                      ),
                    ),
                  ),
                ],
              ),
              20.heightSizedBox,
              Container(
                alignment: Alignment.bottomRight,
                height: 150,
                color: Color.fromRGBO(230, 230, 230, 1),
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/back.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      padding: EdgeInsets.all(8),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text(
                            'فلسطين تاريخ لا يمكن إنكاره ، وهوية لن تمحي.',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                  color: AppColors.black,
                                ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            pushRoute(context, Routes.history);
                          },
                          child: Row(
                            children: [
                              Text(
                                'معرفة المزيد',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 14,
                              ),
                            ],
                          ),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40))),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              10.heightSizedBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'مقاطعات',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () {
                      pushRoute(context, Routes.boyCotts);
                    },
                    child: Text(
                      'عرض الكل',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              Container(
                child: Image.asset(
                  'assets/images/homecot.png',
                ),
              ),
              //10.heightSizedBox,
              // Container(
              //   alignment: Alignment.topRight,
              //   height: context.screenHeight * 0.25,
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       image: AssetImage('assets/images/back.jpeg'),
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
