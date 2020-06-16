import 'package:flutter/material.dart';
import '../constants/constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String label;

  //constructor
  BottomButton({@required this.onTap, @required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            label,
            style: kButtonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 60.0,
      ),
    );
  }
}
