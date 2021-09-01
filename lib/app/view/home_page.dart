import 'package:daily_jokes/app/view/widgets/backgroud_page.dart';
import 'package:daily_jokes/app/view/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (_, constraints) {
          return Stack(
            children: [
              BackgroundPage(constraints: constraints),
              CardWidget(constraints: constraints),
            ],
          );
        },
      ),
    );
  }
}
