import 'package:flutter/material.dart';

class CategoryButtonWidget extends StatelessWidget {
  
  final BoxConstraints constraints;

  const CategoryButtonWidget({Key? key, required this.constraints})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
