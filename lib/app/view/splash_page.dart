import 'package:daily_jokes/app/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      return SplashScreenView(
        navigateRoute: HomePage(),
        duration: 3000,
        imageSrc: 'assets/splash_logo.png',
        imageSize: 500,
        backgroundColor: Color.fromRGBO(255, 222, 89,1),        
      );
    });
  }
}
