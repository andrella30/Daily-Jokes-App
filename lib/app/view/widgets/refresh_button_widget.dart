import 'package:daily_jokes/app/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class RefreshButtonWidget extends StatelessWidget {
  final BoxConstraints constraints;

  const RefreshButtonWidget({Key? key, required this.constraints})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<HomeController>();
    return Positioned(
      top: constraints.maxHeight * 0.8,
      left: 50,
      right: 50,
      child: Container(
        height: 50,
        width: 50,
        child: CircleAvatar(
          backgroundColor: Color.fromRGBO(255, 222, 89,1),
          child: IconButton(
            onPressed: () {
              print(controller.defineCategory);
              controller.loadJoke(controller.defineCategory);
            },
            icon: Icon(
              Icons.refresh,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
