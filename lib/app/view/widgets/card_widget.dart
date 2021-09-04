import 'package:daily_jokes/app/controller/home_controller.dart';
import 'package:daily_jokes/app/view/widgets/category_button_widget.dart';
import 'package:daily_jokes/app/view/widgets/refresh_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class CardWidget extends StatelessWidget {
  final BoxConstraints constraints;

  const CardWidget({Key? key, required this.constraints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<HomeController>();
    return 

    Observer(
      builder: (_) {
        return Stack(
          children: [
            Positioned(
              top: constraints.maxHeight * 0.25,
              left: 40,
              right: 40,
              child: Container(
                height: constraints.maxHeight * 0.45,
                width: constraints.maxWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: constraints.maxHeight * 0.02, left: 40, right: 40),
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      Text(
                        controller.jokes!.joke != null
                            ? controller.jokes!.joke.toString()
                            : "Load Error. Press the Refresh Button",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: constraints.maxHeight * 0.7,
              left: 40,
              right: 40,
              child: Container(
                height: constraints.maxHeight * 0.15,
                width: constraints.maxWidth,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(bottomLeft:  Radius.circular(10), bottomRight:  Radius.circular(10))),
              ),
            ),
            CategoryButtonWidget(constraints: constraints),
            RefreshButtonWidget(constraints: constraints),
          ],
        );
      },
    );
  }
}
