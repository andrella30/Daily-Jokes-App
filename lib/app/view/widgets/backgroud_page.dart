import 'package:flutter/material.dart';

class BackgroudPage extends StatelessWidget {
  final BoxConstraints constraints;

  const BackgroudPage({Key? key, required this.constraints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: constraints.maxHeight * 0.4,
          width: constraints.maxWidth,
          color: Colors.yellow,
          child: Padding(
            padding: EdgeInsets.only(bottom: constraints.maxHeight * 0.1),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Daily Jokes",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Your daily dose of humor",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          height: constraints.maxHeight * 0.6,
          width: constraints.maxWidth,
          color: Colors.white,
        ),
      ],
    );
  }
}
