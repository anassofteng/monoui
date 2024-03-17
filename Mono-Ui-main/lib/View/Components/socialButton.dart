import 'package:flutter/material.dart';

import '../../Constants/Colors Manager/colors_manager.dart';

///Social Button
Widget socialButton({required String image})=> Container(
  height: 40,
  width: 40,
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: AppColor.secondaryColor),
      image: DecorationImage(
          image: AssetImage(image))),
);