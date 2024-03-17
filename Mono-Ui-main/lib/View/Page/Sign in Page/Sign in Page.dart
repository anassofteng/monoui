import 'package:flutter/material.dart';
import '../../../Constants/Colors Manager/colors_manager.dart';
import '../../../Constants/Images Manager/Images_manager.dart';
import '../../Components/defaultAppBar.dart';
import '../../Components/navigateTo.dart';
import '../../Components/default TextFormField.dart';
import '../../Components/defaultButton.dart';
import '../../Components/socialButton.dart';
import '../Forgot Password Page/forget_password_page.dart';
import '../Sign Up Page/sign_up.dart';
import '../Verification_Page/Verification Page.dart';

class Sign_in_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: defaultAppBar(text: "Sign in", centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("welcome back ", style: TextStyle(color: AppColor.primaryColor, fontSize: 16),),
              const SizedBox(height: 20,),
              const Text("phone number "),
              defaultTextFormField(imageSuffixIcon: AppImages.phone),
              const SizedBox(height: 20,),
              const Text("password "),
              defaultTextFormField(imageSuffixIcon: AppImages.eye),
              const SizedBox(height: 5,),
              Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                      onTap: ()
                      {
                        navigateTo(context: context,widget: forgot_Password_Screen());
                      },
                      child: const Text("Forgot password?"))),
              const SizedBox(height: 50,),
              defaultButton(text: "sign in", buttonColor: AppColor.primaryColor, width: double.infinity, textColor: AppColor.whiteColor, onPressed: () {navigateTo(context: context,widget: verification_page());}),
              const SizedBox(height: 15,),
              const Align(alignment: Alignment.center, child: Text("Or by social media")),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                [
                  socialButton(image: AppImages.google),
                  const SizedBox(width: 10,),
                  socialButton(image: AppImages.facebook)
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "I have no account",
                    style: TextStyle(fontSize: 12),
                  ),

                  TextButton(
                    onPressed: () {
                      navigateTo(context: context,widget: Sign_up_page());
                    },
                    child: const Text(
                      "create new account",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30,),
              Container(height: 46, width: double.infinity, decoration: BoxDecoration(border: Border.all(color: AppColor.primaryColor), borderRadius: BorderRadius.circular(26)),
                  child: defaultButton(
                      text: "Enter as a guest",
                      buttonColor: AppColor.whiteColor,
                      width: double.infinity,
                      textColor: AppColor.primaryColor)),
            ],
          ),
        ),
      ),
    );
  }
}
