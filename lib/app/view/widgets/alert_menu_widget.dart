import 'package:daily_jokes/app/controller/home_controller.dart';
import 'package:daily_jokes/app/model/jokeCategories_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class AlertMenuWidget extends StatelessWidget {
  const AlertMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<HomeController>();
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      title: Text('Joke Categories'),
      content: Container(
        width: 1,
        height: 250,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Observer(builder: (context) {
              return Theme(
                data: ThemeData(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
                child: InkWell(
                  onTap: () {
                    controller.index = categories[index].index;
                    controller.defineCategory = categories[index].name;
                    controller.loadJoke(controller.defineCategory);
                  },
                  child: ListTile(
                      title: Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: controller.index == categories[index].index
                            ? Colors.yellow[500]
                            : Colors.white,
                        border: Border.all(color: Colors.indigo),
                        borderRadius:
                            BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Text(
                        categories[index].name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )),
                ),
              );
            });
          },
          itemCount: categories.length,
        ),
      ),
      actions: <Widget>[
        TextButton(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
          ),
          child: Text(
            "OK",
            style: TextStyle(color: Colors.black),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}
