import 'package:flutter/material.dart';
import '../../../Constants/Colors Manager/colors_manager.dart';
import '../../../Constants/Images Manager/Images_manager.dart';
import '../../Components/defaultAppBar.dart';
import '../../Components/navigateTo.dart';
import '../../Components/default TextFormField.dart';
import '../../Components/defaultButton.dart';
import '../../Components/socialButton.dart';

class Sign_up_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: defaultAppBar(
          text: "Create New Account",
          centerTitle: true,
          leadingIcon: Icons.arrow_back_ios),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "welcome",
                style: TextStyle(color: AppColor.primaryColor, fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("phone number"),
              defaultTextFormField(imageSuffixIcon: AppImages.phone),
              const SizedBox(
                height: 20,
              ),
              const Text("password"),
              defaultTextFormField(imageSuffixIcon: AppImages.eye),
              const SizedBox(
                height: 50,
              ),
              defaultButton(
                text: "sign up",
                textColor: AppColor.whiteColor,
                buttonColor: AppColor.primaryColor,
                width: double.infinity,
              ),
              const SizedBox(
                height: 15,
              ),
              const Align(
                  alignment: Alignment.center,
                  child: Text("Or by social media ")),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  socialButton(image: AppImages.google),
                  const SizedBox(
                    width: 10,
                  ),
                  socialButton(image: AppImages.facebook)
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "I have account",
                    style: TextStyle(fontSize: 12),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Sign in",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 46,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColor.primaryColor),
                    borderRadius: BorderRadius.circular(26)),
                child: defaultButton(
                    text: "Enter as a guest",
                    textColor: AppColor.primaryColor,
                    buttonColor: AppColor.whiteColor,
                    width: double.infinity),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
