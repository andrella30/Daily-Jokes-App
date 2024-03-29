import 'package:daily_jokes/app/controller/home_controller.dart';
import 'package:daily_jokes/app/view/splash_page.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  GetIt getIt = GetIt.I;
  getIt.registerSingleton<HomeController>(HomeController());
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {'/': (context) => SplashPage()},
      initialRoute: '/',
    );
  }
}
