import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/helper_functions/functions.dart';
import 'package:free_palestine/core/helper_functions/route_navigation.dart';
import 'package:free_palestine/core/resources/app_colors.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/core/resources/app_routers.dart';
import 'package:free_palestine/features/data/models/news_model.dart';
import 'package:free_palestine/features/presentation/common/gradient_background.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ShowNewsScreen extends StatelessWidget {
  final NewsModel news;

  const ShowNewsScreen({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    print(news.image);
    return GradientBackground(
      title: '${news.title}',
      back: true,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  news.image!,
                  fit: BoxFit.cover,
                  height: context.screenHeight * 0.3,
                  errorBuilder: (BuildContext context, Object error,
                      StackTrace? stackTrace) {
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
              SizedBox(
                height: 60,
                child: Column(
                  children: [
                    10.heightSizedBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Text(
                        //   'نبذة سريعة :',
                        //   style: Theme.of(context)
                        //       .textTheme
                        //       .headlineSmall!
                        //       .copyWith(
                        //         fontSize: FontSize.s22,
                        //         color: Colors.brown,
                        //       ),
                        // ),
                        // Row(
                        //   mainAxisAlignment:
                        //       MainAxisAlignment.spaceAround,
                        //   children: [
                        //
                        //   ],
                        // ),
                        Row(
                          children: [
                            Icon(
                              Icons.edit,
                              size: 25,
                              color: Colors.grey,
                            ),
                            5.widthSizedBox,
                            Text('${news.author}',style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                              color: Colors.grey,
                              fontSize: 16,
                            ),)
                          ],
                        ),
                        IconButton(
                          onPressed: () async {
                            _launchMap(news.url);
                          },
                          icon: const Icon(
                            Icons.link,
                            size: 30,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(

                  children:[
                    TextSpan(
                      text: '${news.title}   ',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(
                          color: AppColors.black, fontSize: 22),
                    ),
                    TextSpan(
                      text: getArDate(news.publishedAt!),
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Wrap(
                children: [

                ],
              ),
              10.heightSizedBox,
              Text(
                '${news.description!}',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(
                  color: AppColors.nearBlack,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _launchMap(url) async {
    if (!await launchUrl(Uri.parse(url),
        mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }
}
