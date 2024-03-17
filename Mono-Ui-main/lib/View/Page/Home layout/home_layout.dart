import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Constants/Images Manager/Images_manager.dart';
import '../../../View_Model/Bloc/App_cubit/App_Cubit.dart';
import '../../../View_Model/Bloc/App_cubit/App_States.dart';


class home_layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        builder: (context, state) {
          return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: AppCubit.get(context).currentIndex,
              onTap: (index) {
                AppCubit.get(context).changeBottomNavigationBar(index);
              },
              items:
              [
                BottomNavigationBarItem(icon:ImageIcon(AssetImage(AppImages.home)), label: "Home",),
                BottomNavigationBarItem(icon:ImageIcon(AssetImage(AppImages.briefcase)), label: "My services",),
                BottomNavigationBarItem(icon:ImageIcon(AssetImage(AppImages.shoppingCart)), label: "My requests",),
                BottomNavigationBarItem(icon:ImageIcon(AssetImage(AppImages.user)), label: "Profile",),
              ],
            ),
            body: AppCubit.get(context)
                .screens[AppCubit.get(context).currentIndex],
          );
        },
        listener: (context, state) {},
      ),
    );
  }
}
