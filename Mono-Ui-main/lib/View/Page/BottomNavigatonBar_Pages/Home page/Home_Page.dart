import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../Constants/Colors Manager/colors_manager.dart';
import '../../../../Constants/Images Manager/Images_manager.dart';
import '../../../../Models/Category_model/category_model.dart';
import '../My Requests Page/My_Requests_Page.dart';
import '../My Services Page/My_Services_page.dart';


class home_page extends StatelessWidget {
  List<CategoryModel> categoryModel =
  [
    CategoryModel(image: AppImages.gardens, text: "Gardens"),
    CategoryModel(image: AppImages.electricity, text: "Electricity"),
    CategoryModel(image: AppImages.cleaning, text: "Cleaning"),
    CategoryModel(image: AppImages.plumbing, text: "Plumbing"),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.whiteColor,
        body: Padding(
          padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(height: 38,
                      width: 228,
                      decoration: BoxDecoration(
                        color: AppColor.whiteColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        decoration:InputDecoration(
                          hintText: "Search",
                          prefixIcon: ImageIcon(
                            AssetImage(AppImages.search),
                            color: AppColor.greyColor,
                          ),
                          suffixIcon: ImageIcon(
                              AssetImage(AppImages.filterList),
                              color: AppColor.greyColor,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Text("Categories", style: TextStyle(fontSize: 16),),
                    Spacer(),
                    Text("See all", style: TextStyle(fontSize: 10),),
                  ],
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  height: 120,
                  child: ListView.builder(physics: const BouncingScrollPhysics(), itemBuilder: (context, index) => buildCategoryItems(categoryModel[index]), scrollDirection: Axis.horizontal, itemCount: categoryModel.length,),
                ),
                const SizedBox(height: 10,),
                Row(
                  children: const [
                    Text("Offers & packages", style: TextStyle(fontSize: 16),),
                    Spacer(),
                    Text("See all", style: TextStyle(fontSize: 10),),
                  ],
                ),
                const SizedBox(height: 10,),
                buildRequestsItem(text: "BOOk",buttonColor: AppColor.primaryColor),
                const SizedBox(height: 10,),
                Row(
                  children: const [
                    Text("Different services", style: TextStyle(fontSize: 16),),
                    Spacer(),
                    Text("See all", style: TextStyle(fontSize: 10),),
                  ],
                ),
                const SizedBox(height: 10,),
                buildServicesItem(color: AppColor.primaryColor,text: "BOOk"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCategoryItems(CategoryModel model) => Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Column(
          children: [
            Image(
              image: AssetImage(model.image),
              height: 80,
              width: 80,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              model.text,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF1C1C1C)),
            ),
          ],
        ),
      );
}
