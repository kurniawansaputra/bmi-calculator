import 'package:flutter/material.dart';

class RectangleIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  RectangleIconButton({@required this.icon, @required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(height: 45.0, width: 45.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      fillColor: Colors.white,
      onPressed: onPressed,
    );
  }
}
