import 'package:daily_jokes/app/controller/home_controller.dart';
import 'package:daily_jokes/app/view/widgets/alert_menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class CategoryButtonWidget extends StatelessWidget {
  final BoxConstraints constraints;

  const CategoryButtonWidget({Key? key, required this.constraints})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<HomeController>();
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: constraints.maxHeight * 0.5),
        child: Container(
          height: constraints.maxHeight * 0.05,
          width: constraints.maxWidth * 0.5,
          decoration: BoxDecoration(
            color: Colors.grey[400],
            borderRadius: BorderRadius.circular(50),
          ),
          child: Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: InkWell(
              onTap: () => _showMenuAlert(context),
              child: Center(
                child: Text(
                  controller.defineCategory.toString(),
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _showMenuAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) {
          return AlertMenuWidget();
        });
  }
}
