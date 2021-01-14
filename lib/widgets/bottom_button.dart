import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String titleButton;

  BottomButton({@required this.onTap, @required this.titleButton});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            titleButton,
            style: kLabelTextStyleWhite,
          ),
        ),
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
        width: double.infinity,
        height: 60.0,
        decoration: BoxDecoration(
          color: kBottomContainer,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
