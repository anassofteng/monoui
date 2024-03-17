import 'package:flutter/material.dart';

///default Button
Widget defaultButton({required text, double? width, required Color buttonColor, required Color textColor, Function()? onPressed,}) => SizedBox(
  height: 46,
  width: width,
  child: ElevatedButton(
    onPressed: onPressed,
    style: ButtonStyle(
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26),
        ),
      ),
      backgroundColor: MaterialStateProperty.all(
        buttonColor,
      ),
    ),
    child: Text(
      text,
      style: TextStyle(fontSize: 14, color: textColor),
    ),
  ),
);