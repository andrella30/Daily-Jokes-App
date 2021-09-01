import 'package:flutter/material.dart';

class RefreshButtonWidget extends StatelessWidget {
  final BoxConstraints constraints;

  const RefreshButtonWidget({Key? key, required this.constraints})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
    );
  }
}
