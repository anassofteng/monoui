import 'package:flutter/material.dart';
import '../../../Constants/Colors Manager/colors_manager.dart';
import '../../../Constants/Images Manager/Images_manager.dart';
import '../../../Constants/Strings Manager/strings_manager.dart';
import '../../Components/navigateTo.dart';
import '../On Boareding_Page/Onboarding_Screen.dart';

class splash_Screen extends StatefulWidget {
  @override
  State<splash_Screen> createState() => _splash_ScreenState();
}

class _splash_ScreenState extends State<splash_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {navigateTo(context: context,widget: onBoarding_Screen());},);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColor.primaryColor,
      body: Center(
        child: Column(
          children:
          [
            Expanded(flex: 6, child: Image(image: AssetImage(AppImages.logo), width: 143, height: 105,),),
             Expanded(flex: 1, child: Text(AppStrings.app_Name, style: TextStyle(fontSize: 24, color: AppColor.whiteColor, fontWeight: FontWeight.bold,),),),
          ],
        ),
      ),
    );
  }
}
