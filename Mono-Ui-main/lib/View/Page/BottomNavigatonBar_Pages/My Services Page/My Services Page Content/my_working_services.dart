import 'package:flutter/material.dart';
import '../../../../../Constants/Colors Manager/colors_manager.dart';
import '../../../../Components/navigateTo.dart';
import '../../../../Components/defaultButton.dart';
import '../My_Services_page.dart';

class my_working_services extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
      [
        Expanded(child: ListView.builder(itemBuilder: (context, index) => buildServicesItem(color: AppColor.primaryColor,text: "working"),itemCount: 3,)),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: defaultButton(text:'+ add a new service',textColor:AppColor.whiteColor,buttonColor: AppColor.primaryColor,width: double.infinity)
        ),


      ],
    );
  }
}
