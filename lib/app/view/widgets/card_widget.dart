import 'package:daily_jokes/app/view/widgets/category_button_widget.dart';
import 'package:daily_jokes/app/view/widgets/refresh_button_widget.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final BoxConstraints constraints;

  const CardWidget({Key? key, required this.constraints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: constraints.maxHeight * 0.25,
          left: 40,
          right: 40,
          child: Container(
            height: constraints.maxHeight * 0.6,
            width: constraints.maxWidth,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: constraints.maxHeight * 0.05, left: 40, right: 40),
                  child: Text(
                    "Programming is 10% science, 20% ingenuity, and 70% getting the ingenuity to work with the science.",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
        ),
        CategoryButtonWidget(constraints: constraints),
        RefreshButtonWidget(constraints: constraints),
      ],
    );
  }
}
