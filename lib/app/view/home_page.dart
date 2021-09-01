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
                            top: constraints.maxHeight * 0.05,
                            left: 40,
                            right: 40),
                        child: Text(
                          "Programming is 10% science, 20% ingenuity, and 70% getting the ingenuity to work with the science.",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: constraints.maxHeight * 0.8,
                left: 50,
                right: 50,
                child: Container(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.yellow[300],
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.refresh,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.only(top: constraints.maxHeight * 0.45),
                    child: Container(
                      height: constraints.maxHeight * 0.05,
                      width: constraints.maxWidth * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          "Programming",
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
            ],
          );
        },
      ),
    );
  }
}
