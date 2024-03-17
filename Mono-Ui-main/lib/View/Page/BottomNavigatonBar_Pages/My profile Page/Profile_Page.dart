import 'package:flutter/material.dart';

import '../../../../Constants/Colors Manager/colors_manager.dart';
import '../../../../Constants/Images Manager/Images_manager.dart';



class profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children:
            [
              SizedBox(
                height: 190,
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Align(
                      alignment: AlignmentDirectional.topCenter,
                      child: Container(
                        height: 145,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: AppColor.blackColor,
                          borderRadius:BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight:Radius.circular(20))
                        ),
                      ),
                    ),
                    const Image(image: AssetImage("assets/images/Ellipse 24.png"),),

                  ],
                ),
              ),
              const SizedBox(height: 20,),
              buildProfileItem("wallet",AppImages.wallet),
              buildProfileItem("address",AppImages.address),
              buildProfileItem("favorites",AppImages.address),
              buildProfileItem("share code",AppImages.shareCode),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10), child: Container(height: .6,color: AppColor.secondaryColor,width: double.infinity,),),
              buildProfileItem("about mono",AppImages.aboutMono),
              buildProfileItem("contact us",AppImages.contactUs),
              buildProfileItem("settings",AppImages.settings),
              buildProfileItem("sign out",AppImages.signOut),
            ],
          ),
        ),
      ),
    );
  }
    Widget buildProfileItem(String text,String image)=>Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0)+const EdgeInsets.only(bottom: 15),
    child: Row(
      children:
      [
        ImageIcon(AssetImage(image),size: 30,color: AppColor.greyColor, ),
        const SizedBox(width: 10,),
        Text(text,style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColor.blackColor),),
      ],
    ),
  );
}
