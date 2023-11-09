// import 'package:awesome_dialog/awesome_dialog.dart';
// import 'package:flutter/material.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';
// import 'package:free_palestine/core/resources/app_colors.dart';
// import 'package:free_palestine/features/ads/ad_manager.dart';
//
// // var loadAds  = InterstitialAd.load(
// //   adUnitId: AdManager.fullAddId,
// //   request: const AdRequest(),
// //   adLoadCallback: InterstitialAdLoadCallback(
// //     onAdLoaded: (ad) {
// //       ad.show();
// //     },
// //     onAdFailedToLoad: (LoadAdError error) {
// //       debugPrint('InterstitialAd failed to load: $error');
// //     },
// //   ),
// // );
//
// void loadAndShowAd(BuildContext context) {
//   InterstitialAd.load(
//     adUnitId: AdManager.fullAddId,
//     request: const AdRequest(),
//     adLoadCallback: InterstitialAdLoadCallback(
//       onAdLoaded: (ad) {
//         // Listener for when the ad is shown and when it's closed
//         ad.fullScreenContentCallback = FullScreenContentCallback(
//           onAdDismissedFullScreenContent: (InterstitialAd ad) {
//             // Put the code you want to execute after the ad is closed here
//             debugPrint('InterstitialAd was dismissed!');
//
//             // Show the AwesomeDialog after the ad is dismissed
//             AwesomeDialog(
//               context: context,
//               animType: AnimType.scale,
//               dialogType: DialogType.info,
//               body: const Center(
//                   child: Text(
//                 'قم بترقية الحساب لإلغاء الإعلانات',
//               )),
//               btnOkOnPress: () {},
//               btnCancelOnPress: () {},
//               btnOkText: 'ترقية الآن',
//               btnCancelText: 'ذكرني لاحقاً',
//               btnOkColor: Theme.of(context).primaryColor,
//               btnCancelColor: AppColors.info,
//             ).show();
//           },
//           onAdFailedToShowFullScreenContent:
//               (InterstitialAd ad, AdError error) {
//             debugPrint('InterstitialAd failed to show with error: $error');
//           },
//         );
//         ad.show();
//       },
//       onAdFailedToLoad: (LoadAdError error) {
//         debugPrint('InterstitialAd failed to load: $error');
//       },
//     ),
//   );
// }
//
// // ads
// // BannerAd? bannerAd;
// // bool isLoaded = false;
// // InterstitialAd? interstitialAd;
// //
// // void loadBannerAds() {
// //   bannerAd = BannerAd(
// //     size: AdSize.banner,
// //     adUnitId: AdManager.bannerHomeId,
// //     listener: BannerAdListener(onAdLoaded: (ad) {
// //       setState(() {
// //         isLoaded = true;
// //       });
// //     }, onAdFailedToLoad: (ad, error) {
// //       ad.dispose();
// //     }),
// //     request: const AdRequest(),
// //   )..load();
// // }
