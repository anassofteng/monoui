import 'package:flutter/material.dart';
import '../../../../../Constants/Colors Manager/colors_manager.dart';
import '../My_Requests_Page.dart';

class my_finished_requests extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return buildRequestsItem(text: "cancelled",buttonColor: AppColor.redColor);

  }
}
