import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../Constants/Colors Manager/colors_manager.dart';
import '../../../../Constants/Images Manager/Images_manager.dart';
import '../../../../View_Model/Bloc/App_cubit/App_Cubit.dart';
import '../../../../View_Model/Bloc/App_cubit/App_States.dart';
import '../../../Components/navigateTo.dart';
import '../../../Components/defaultButton.dart';
import 'My Requests Page Content/my_finished_requests.dart';
import 'My Requests Page Content/my_waiting_requests.dart';
import 'My Requests Page Content/my_working_requests.dart';

class my_Requests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        builder: (context, state) {
          return SafeArea(
            child: DefaultTabController(
              length: AppCubit.get(context).myRequestsTaps.length,
              child: Scaffold(
                body: Padding(
                  padding: const EdgeInsets.only(right: 10.0,left: 10.0,bottom: 12.0),
                  child: Column(
                      children: [
                    Row(
                      children: [
                        ImageIcon(
                          AssetImage(AppImages.notification),
                          color: AppColor.primaryColor,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: AppColor.whiteColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Search",
                                prefixIcon: ImageIcon(
                                  AssetImage(AppImages.search),
                                  color: AppColor.greyColor,
                                ),
                                suffixIcon: ImageIcon(
                                    AssetImage(AppImages.filterList),
                                    color:AppColor.greyColor),
                                helperStyle:
                                    const TextStyle(color: AppColor.greyColor),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ImageIcon(AssetImage(AppImages.message),
                            color: AppColor.primaryColor,),
                      ],
                    ),
                    TabBar(
                      tabs: AppCubit.get(context).myRequestsTaps,
                      indicatorColor: AppColor.primaryColor,
                      labelColor:  AppColor.primaryColor,
                      unselectedLabelColor:  AppColor.greyColor,
                    ),
                    Expanded(
                      child: TabBarView(
                          physics: const BouncingScrollPhysics(),
                          children: [
                            my_waiting_requests(),
                            my_working_requests(),
                            my_finished_requests(),
                          ]),
                    ),
                  ]),
                ),
              ),
            ),
          );
        },
        listener: (context, state) {},
      ),
    );
  }
}
Widget buildRequestsItem({
  required String text,
  dynamic buttonColor=AppColor.primaryColor,
})=>  Padding(
  padding: const EdgeInsets.only(top: 10),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Center(
          child: Image(
            image: AssetImage(AppImages.livingRoom),
          )),
      const SizedBox(
        height: 10,
      ),
      Row(
        children: const [
          Text(
            "Design of a children's room for 2 children",
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF1C1C1C),
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Text(
            "256 EG",
            style: TextStyle(
              color: AppColor.primaryColor,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      const Text(
        "Interior design",
        style: TextStyle(color: AppColor.blackColor, fontSize: 10),
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
              AppImages.person,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text("Designer / Ibrahim"),
          const Spacer(),
          SizedBox(
              height: 40,
              child: defaultButton(text: text,buttonColor: buttonColor,textColor: AppColor.whiteColor,)
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    ],
  ),

);

