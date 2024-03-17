import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../View/Page/BottomNavigatonBar_Pages/Home page/Home_Page.dart';
import '../../../View/Page/BottomNavigatonBar_Pages/My Requests Page/My_Requests_Page.dart';
import '../../../View/Page/BottomNavigatonBar_Pages/My Services Page/My_Services_page.dart';
import '../../../View/Page/BottomNavigatonBar_Pages/My profile Page/Profile_Page.dart';
import 'App_States.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  ///current index in BottomNavigationBar
  int currentIndex = 0;
  //////////////////////////////////////////////////////////////////////////
  ///Screens in BottomNavigationBar
  List<Widget> screens =
  [
    home_page(),
    my_Services(),
    my_Requests(),
    profile(),
  ];
/////////////////////////////////////////////////////////////////////////////////
  /// Request screen Taps
  List<Tab> myRequestsTaps = [
    const Tab(
      text: "waiting",
    ),
    const Tab(
      text: "working ",
    ),
    const Tab(
      text: "Finished ",
    ),
  ];
  ///  Services screen Taps
  List<Tab> myServicesTaps = [
    const Tab(
      text: "waiting",
    ),
    const Tab(
      text: "working ",
    ),
    const Tab(
      text: "Finished ",
    ),
  ];

  /////////////////////////////////////////////////////////////////////////////
  ///Change BottomNavigationBar
  void changeBottomNavigationBar(index) {
    currentIndex = index;
    emit(AppChangeBottomNavigationBarState());
  }
}
