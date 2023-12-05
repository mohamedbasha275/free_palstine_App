import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_palestine/core/di/service_locator.dart';
import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/helper_functions/functions.dart';
import 'package:free_palestine/core/helper_functions/route_navigation.dart';
import 'package:free_palestine/core/resources/app_routers.dart';
import 'package:free_palestine/core/resources/app_strings.dart';
import 'package:free_palestine/core/resources/values_manager.dart';
import 'package:free_palestine/features/business_logic/news/news_cubit.dart';
import 'package:free_palestine/features/data/local/cities_list.dart';
import 'package:free_palestine/features/data/repositories/news_repo.dart';
import 'package:free_palestine/features/presentation/common/empty_widget.dart';
import 'package:free_palestine/features/presentation/common/gradient_background.dart';
import 'package:flutter/material.dart';
import 'package:free_palestine/features/presentation/common/loading_widget.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      title: 'أخر الأخبار',
      child: BlocProvider(
        create: (context) => NewsCubit(getIt.get<NewsRepoImpl>())..fetchAllNews(),
        child: BlocBuilder<NewsCubit, NewsState>(
          builder: (context, state) {
            if (state is NewsLoading) {
              return const LoadingWidget();
            } else if (state is NewsFailure) {
              print(state.errorMessage);
              return Column(
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
              );
            } else if (state is NewsSuccess) {
              return SingleChildScrollView(
                child: ListView.builder(
                  itemCount: state.news.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(AppPadding.p16),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(240, 240, 240, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      child: GestureDetector(
                        onTap: () {
                          pushRoute(context, Routes.showNews,
                              arguments: state.news[index]);
                        },
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                state.news[index].image!,
                                fit: BoxFit.cover,
                                height: 100,
                                width: 100,
                                loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                                  if (loadingProgress == null) {
                                    return child;  // Image is loaded, return it
                                  }
                                  return Container(
                                    height: 100,
                                    width: 100,
                                    color: Colors.white,
                                    child: Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  );
                                },
                                errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                                  // Your existing error handling code
                                  return Container(
                                    height: 100,
                                    width: 100,
                                    color: Colors.white,
                                    child: const Center(
                                      child: Icon(
                                        Icons.error, // Displays an error icon
                                        color: Colors.grey,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            10.widthSizedBox,
                            Column(
                              children: [
                                Container(
                                  width: 200,
                                  child: Text(
                                    state.news[index].title!,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                5.heightSizedBox,
                                Container(
                                  width: 200,
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    getArDate(state.news[index].publishedAt!),
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            } else {
              return EmptyWidget(message: AppStrings.noPoems);
            }
          },
        ),
      ),
    );
  }
}
