import 'package:flutter/material.dart';
import 'package:my_first_mobile_app/custom_widgets/CustomText.dart';

class CustomSmallButton extends StatelessWidget{
  final String text;
  final IconData icon;
  final FontColor fontColor;
  final FontSize fontSize;
  final FontWeight fontWeight;
  final void Function() onPressed;
  final Color backgroundButton;
  final Color borderColor;

  CustomSmallButton({
    @required this.text,
    @required this.onPressed,
    @required this.fontColor,
    @required this.backgroundButton,
    this.fontSize = FontSize.sm,
    this.fontWeight = FontWeight.normal,
    this.icon,
    @required this.borderColor
  });
  

}