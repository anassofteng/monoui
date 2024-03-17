import 'package:flutter/material.dart';
import '../../../../../Constants/Colors Manager/colors_manager.dart';
import '../../../../../Constants/Images Manager/Images_manager.dart';
import '../../../Components/navigateTo.dart';
import '../../../Components/defaultButton.dart';
import '../My Services Page/My_Services_page.dart';

class home_page_arabic extends StatefulWidget {
  @override
  State<home_page_arabic> createState() => _home_page_arabicState();
}

class _home_page_arabicState extends State<home_page_arabic> {
  List<String> categoryList =
  [
    "Design of children's rooms",
    "Living room design",
    "Living room design",
  ];
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.whiteColor,
        body: Padding(
          padding: const EdgeInsets.only(right: 10, left: 10, top: 10,bottom: 10),
          child: Column(
            children: [
              SizedBox(
                height: 30,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => buildCategoryItems(categoryList[index],index),
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryList.length,
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Text("Different services", style: TextStyle(fontSize: 16),),
                  Spacer(),
                  Text("See all", style: TextStyle(fontSize: 10),),
                ],
              ),
              const SizedBox(height: 10,),
              Expanded(child: ListView.builder(itemBuilder: (context, index) =>buildServicesItem(color: AppColor.primaryColor,text: "BOOk"),itemCount: 3)),
              const SizedBox(height: 10,),
              Row(
                children: const [
                  Text("Offers & packages", style: TextStyle(fontSize: 16),),
                  Spacer(),
                  Text("See all", style: TextStyle(fontSize: 10),),
                ],
              ),
              const SizedBox(height: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Image(image: AssetImage(AppImages.livingRoom),)),
                  const SizedBox(height: 10,),
                  Row(
                    children: const [
                      Text("Design of a children's room for 2 children", style: TextStyle(fontSize: 12, color: Color(0xFF1C1C1C), fontWeight: FontWeight.w400,),),
                      Spacer(),
                      Text("256 EG", style: TextStyle(color: AppColor.primaryColor, fontSize: 20, fontWeight: FontWeight.w400,),),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  const Text("Interior design", style: TextStyle(color: AppColor.blackColor, fontSize: 10),),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      CircleAvatar(backgroundImage: AssetImage(AppImages.person,),),
                      const SizedBox(width: 10,),
                      const Text("Designer / Ibrahim"),
                      const Spacer(),
                      defaultButton(text: "BOOk",buttonColor: AppColor.primaryColor,textColor: AppColor.whiteColor,),
                    ],
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget buildCategoryItems(String model,index) => Padding(
    padding: const EdgeInsets.only(right: 5.0),
    child: InkWell(
      onTap: (){
        setState(() {
          selectedItem = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.only(right: 10.0,left: 10),
        height: 30,
        decoration: BoxDecoration(
          color: selectedItem==index?AppColor.secondaryColor:AppColor.whiteColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(model,style: TextStyle(
            color: selectedItem==index?AppColor.whiteColor:AppColor.greyColor,
          ),),
        ),
      ),
    )
  );
}
