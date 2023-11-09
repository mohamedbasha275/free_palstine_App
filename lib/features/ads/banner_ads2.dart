// import 'package:flutter/material.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';
// import 'package:free_palestine/features/ads/ad_manager.dart';
//
// class BannerAds extends StatefulWidget {
//   const BannerAds({super.key});
//
//   @override
//   State<BannerAds> createState() => _BannerAdsState();
// }
//
// class _BannerAdsState extends State<BannerAds> {
//   BannerAd? bannerAd;
//   bool isLoaded = false;
//   InterstitialAd? interstitialAd;
//
//   void load() {
//     bannerAd = BannerAd(
//       size: AdSize.banner,
//       adUnitId: AdManager.bannerHomeId,
//       listener: BannerAdListener(onAdLoaded: (ad) {
//         setState(() {
//           isLoaded = true;
//         });
//       }, onAdFailedToLoad: (ad, error) {
//         ad.dispose();
//       }),
//       request: const AdRequest(),
//     )..load();
//     // InterstitialAd.load(
//     //     adUnitId: AdManager.fullAddId,
//     //     request: const AdRequest(),
//     //     adLoadCallback: InterstitialAdLoadCallback(
//     //       // Called when an ad is successfully received.
//     //       onAdLoaded: (ad) {
//     //         debugPrint('$ad loaded.');
//     //         setState(() {
//     //           interstitialAd = ad;
//     //         });
//     //         if (interstitialAd != null) {
//     //           interstitialAd!.show();
//     //         }
//     //         // Keep a reference to the ad so you can show it later.
//     //       },
//     //       // Called when an ad request failed.
//     //       onAdFailedToLoad: (LoadAdError error) {
//     //         debugPrint('InterstitialAd failed to load: $error');
//     //       },
//     //     ));
//   }
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     load();
//   }
//
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     if (isLoaded) {
//       bannerAd!.dispose();
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.greenAccent,
//       appBar: AppBar(
//         title: Text('ads'),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             Center(
//               child: isLoaded
//                   ? SizedBox(
//                       width: bannerAd!.size.width.toDouble(),
//                       height: bannerAd!.size.height.toDouble(),
//                       child: AdWidget(ad: bannerAd!),
//                     )
//                   : const SizedBox(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
