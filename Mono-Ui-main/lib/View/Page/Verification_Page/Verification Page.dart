import 'dart:core';
import 'package:flutter/material.dart';

import '../../../Constants/Colors Manager/colors_manager.dart';
import '../../Components/defaultAppBar.dart';
import '../../Components/navigateTo.dart';
import '../../Components/defaultButton.dart';
import '../../Components/verificationField.dart';
import '../Home layout/home_layout.dart';


class verification_page extends StatefulWidget {
  @override
  State<verification_page> createState() => _verification_pageState();
}

class _verification_pageState extends State<verification_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: defaultAppBar(
          text: "verification",
          centerTitle: true,
          leadingIcon: Icons.arrow_back_ios),
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0,right: 12.0, left: 12) ,
        child: Column(
          children: [
            const Text("Lorem Ipsum is simply dummy \n text of the printing", textAlign: TextAlign.center, style: TextStyle(fontSize: 16,),),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                verificationField(context: context),
                verificationField(context: context),
                verificationField(context: context),
                verificationField(context: context),
              ],
            ),
            const SizedBox(height: 50,),
            Row(
              children: const [
                Text("Resend", style: TextStyle(fontSize: 14),),
                SizedBox(width: 10,),
                Text("1:55 min", style: TextStyle(color: AppColor.primaryColor, fontSize: 14),),
              ],
            ),
            const SizedBox(height: 40,),
            defaultButton(text: 'confirm', textColor: AppColor.whiteColor, width: double.infinity, buttonColor: AppColor.primaryColor, onPressed: () {navigateTo(context: context, widget: home_layout());}),
          ],
        ),
      ),
    );
  }
}
