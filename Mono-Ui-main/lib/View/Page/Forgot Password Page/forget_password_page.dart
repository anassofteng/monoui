import 'package:flutter/material.dart';
import 'package:mono_ui/Constants/Images%20Manager/Images_manager.dart';
import '../../../Constants/Colors Manager/colors_manager.dart';
import '../../Components/defaultAppBar.dart';
import '../../Components/navigateTo.dart';
import '../../Components/defaultButton.dart';


class forgot_Password_Screen extends StatefulWidget {
  @override
  State<forgot_Password_Screen> createState() => _forgot_Password_ScreenState();
}

class _forgot_Password_ScreenState extends State<forgot_Password_Screen> {
 Object ?group="Google account";
 bool isEmail=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(text: "forgot password",centerTitle:true,leadingIcon: Icons.arrow_back_ios),
      body: Padding(
        padding: const EdgeInsets.only(top: 30,right: 12,left: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Row(
            children: [
              Expanded(
                child: Row(
                  children:
                  [
                    Radio(value: "Google account", groupValue:group, onChanged: (value){setState(() {group=value;isEmail=!isEmail;});},activeColor: AppColor.secondaryColor,),
                    const Text("Google account"),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children:
                  [
                    Radio(value: "Phone number", groupValue:group, onChanged: (value){setState(() {group=value;isEmail=!isEmail;});},activeColor:  AppColor.secondaryColor),
                    const Text("Phone number"),
                  ],
                ),
              ),

            ],
          ),
            const SizedBox(height: 40,),
            Text( isEmail?"Email":"phone number ",style: const TextStyle(fontSize: 14),),
            const SizedBox(height: 10,),
            TextFormField(decoration: InputDecoration(enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColor.secondaryColor)), suffixIcon: isEmail?ImageIcon(AssetImage(AppImages.mail)):ImageIcon(AssetImage(AppImages.phone)),),),
            const SizedBox(height: 40,),
            defaultButton(text:'Send',buttonColor: AppColor.primaryColor,width: double.infinity,textColor: AppColor.whiteColor),
          ],
        ),
      ),
    );
  }
}
