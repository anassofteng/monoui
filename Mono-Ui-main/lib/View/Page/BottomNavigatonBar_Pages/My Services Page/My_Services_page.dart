import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mono_ui/Constants/Images%20Manager/Images_manager.dart';
import '../../../../Constants/Colors Manager/colors_manager.dart';
import '../../../../View_Model/Bloc/App_cubit/App_Cubit.dart';
import '../../../../View_Model/Bloc/App_cubit/App_States.dart';
import '../../../Components/defaultAppBar.dart';
import '../../../Components/navigateTo.dart';
import 'My Services Page Content/my_finished_services.dart';
import 'My Services Page Content/my_waiting_services.dart';
import 'My Services Page Content/my_working_services.dart';
class my_Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        builder: (context, state) {
          return SafeArea(
            child: DefaultTabController(
              length: AppCubit.get(context).myServicesTaps.length,
              child: Scaffold(
                appBar: defaultAppBar(text:"my services",centerTitle: true,leadingIcon: Icons.arrow_back_ios,actionIcon: [Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ImageIcon(AssetImage(AppImages.bag),color: AppColor.blackColor,),
                )]),
                body: Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8.0),
                  child: Column(
                    children: [
                      TabBar(
                        tabs: AppCubit.get(context).myServicesTaps,
                        indicatorColor: AppColor.primaryColor,
                        labelColor:  AppColor.primaryColor,
                        unselectedLabelColor:  AppColor.greyColor,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: TabBarView(
                              physics: const BouncingScrollPhysics(),
                              children:
                              [
                                my_wating_services(),
                                my_working_services(),
                                my_finished_services(),
                              ]),
                        ),
                      ),
                    ],
                  ),
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

Widget buildServicesItem({
  required Color color,
  required String text,
}) =>
    Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        height: 90,
        color: AppColor.whiteColor,
        child: Row(
          children: [
            Container(
              height: 78,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage(AppImages.spacejoy),
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Design of a children's \n room for 2 children",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                  Spacer(),
                  Text(
                    "Interior design",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            Column(

              children: [
                const Text(
                  "256 EG",
                  style: TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
                 Padding(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 5),
                  child: Image(image: AssetImage(AppImages.stars)),
                ),
                const Spacer(),
                SizedBox(
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                        backgroundColor: MaterialStateProperty.all(color),
                      ),
                      child:  Text(
                        text,
                        style: const TextStyle(fontSize: 14, color: AppColor.whiteColor),
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
