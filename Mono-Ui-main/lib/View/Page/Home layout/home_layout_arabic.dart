import 'package:flutter/material.dart';

import '../../../../Constants/Images Manager/Images_manager.dart';
import '../BottomNavigatonBar_Pages/Home page/Arabic Home Page.dart';

class home_layout_arabic extends StatefulWidget {
  @override
  State<home_layout_arabic> createState() => _home_layout_arabicState();
}

class _home_layout_arabicState extends State<home_layout_arabic> {
  int currentArabicIndex = 0;

  ///Screens in BottomNavigationBar
  List<Widget> arabicScreens = [
    home_page_arabic(),
    Container(),
    Container(),
    Container(),
    Container(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: BottomNavigationBar(
          currentIndex: currentArabicIndex,
          onTap: (index)
          {
            setState(() {
              currentArabicIndex=index;
            });
          },
          items:
          [
            BottomNavigationBarItem(icon:ImageIcon(AssetImage(AppImages.home)), label: "الرئيسيه",),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage(AppImages.gallery)), label: "المعرض",),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage(AppImages.briefcase)), label: "خدماتي",),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage(AppImages.shoppingCart)), label: "طلباتي",),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage(AppImages.user)), label: "حسابي",),
          ],
        ),
      ),
      body: arabicScreens[currentArabicIndex],
    );
  }
}
