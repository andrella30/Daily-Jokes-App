import 'package:daily_jokes/app/view/widgets/backgroud_page.dart';
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
              BackgroudPage(constraints: constraints),
              Positioned(
                top: constraints.maxHeight / 4,
                left: 40,
                right: 40,
                child: Container(
                  height: constraints.maxHeight / 1.8,
                  width: constraints.maxWidth,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
