import 'package:flutter/material.dart';

import '../../Constants/Colors Manager/colors_manager.dart';

/// App Bar
AppBar defaultAppBar({required String text, bool centerTitle = false, IconData? leadingIcon, List<Widget>? actionIcon,}) => AppBar(
  backgroundColor: AppColor.whiteColor,
  elevation: 0.0,
  title: Text(
    text,
    style: const TextStyle(color: AppColor.blackColor, fontSize: 20),
  ),
  centerTitle: centerTitle,
  leading: Icon(
    leadingIcon,
    color: AppColor.blackColor,
  ),
  actions: actionIcon,
);