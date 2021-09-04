import 'package:flutter/material.dart';

class BackgroundPage extends StatelessWidget {
  final BoxConstraints constraints;

  const BackgroundPage({Key? key, required this.constraints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: constraints.maxHeight * 0.4,
          width: constraints.maxWidth,
          color: Color.fromRGBO(255, 222, 89,1),
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
          color: Colors.grey[100],
        ),
      ],
    );
  }
}
