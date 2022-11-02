import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:io';

class BackgroundPage extends StatefulWidget {
  final BoxConstraints constraints;

  const BackgroundPage({Key? key, required this.constraints}) : super(key: key);

  @override
  State<BackgroundPage> createState() => _BackgroundPageState();
}

class _BackgroundPageState extends State<BackgroundPage> {
  InterstitialAd? _interstitialAd;

  BannerAd? _bannerAd;

  @override
  void initState() {
    super.initState();

    loadInterstitialAd();
    loadBannerAd();
  }

  void loadBannerAd() {
    _bannerAd = BannerAd(
      adUnitId: Platform.isIOS == TargetPlatform.iOS
          ? "ca-app-pub-3940256099942544/2934735716"
          : "ca-app-pub-3940256099942544/6300978111",
      size: AdSize.banner,
      request: AdRequest(),
      listener: BannerAdListener(),
    );

    _bannerAd?.load();
  }

  void loadInterstitialAd() {
    String interstitialAdId = Platform.isIOS == TargetPlatform.iOS
        ? "ca-app-pub-3940256099942544/4411468910"
        : "ca-app-pub-3940256099942544/1033173712";
    InterstitialAd.load(
        adUnitId: interstitialAdId,
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (InterstitialAd ad) {

            this._interstitialAd = ad;

            ad.fullScreenContentCallback = FullScreenContentCallback(
              onAdDismissedFullScreenContent: (InterstitialAd ad) {
                ad.dispose();
                loadInterstitialAd();
              },
              onAdFailedToShowFullScreenContent:
                  (InterstitialAd ad, AdError error) {
                ad.dispose();
                loadInterstitialAd();
              },
            );
          },
          onAdFailedToLoad: (LoadAdError error) {
            print('InterstitialAd failed to load: $error');
          },
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: widget.constraints.maxHeight * 0.4,
          width: widget.constraints.maxWidth,
          color: Color.fromRGBO(255, 222, 89, 1),
          child: Padding(
            padding:
                EdgeInsets.only(bottom: widget.constraints.maxHeight * 0.1),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Daily Jokes",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () { 
                      _interstitialAd?.show();
                     },
                    child: Text(
                    "Your daily dose of humor",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500), 
                    
                    ) 
                    
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          height: widget.constraints.maxHeight * 0.5,
          width: widget.constraints.maxWidth,
          color: Colors.grey[100],
        ),
        Container(
          alignment: Alignment.center,
          child: AdWidget(ad: _bannerAd!),
          height: widget.constraints.maxHeight * 0.1,
          width: widget.constraints.maxWidth,
        ),
      ],
    );
  }
}
