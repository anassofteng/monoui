import 'package:flutter/material.dart';

import '../../Constants/Colors Manager/colors_manager.dart';

///default TextFormField
Widget defaultTextFormField({Color underlineColor = AppColor.secondaryColor, required String imageSuffixIcon, TextEditingController? controller,}) => TextFormField(
  controller: controller,
  decoration: InputDecoration(
    suffixIcon: ImageIcon(AssetImage(imageSuffixIcon)),
    enabledBorder:
    UnderlineInputBorder(borderSide: BorderSide(color: underlineColor)),
  ),
);