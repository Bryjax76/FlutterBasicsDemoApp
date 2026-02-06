import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/colors/my_colors.dart';

class MyAnimatedContainer extends StatefulWidget {
  @override
  _MyAnimatedContainerState createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  Color containerColor = MyColors.melon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint("On tap color change!");

        setState(() {
          containerColor = containerColor == MyColors.melon
              ? MyColors.ufoGreen
              : MyColors.melon;
        });
      },
      child: AnimatedContainer(
        width: 50,
        height: 50,
        color: containerColor,
        duration: Duration(seconds: 1),
      ),
    );
  }
}