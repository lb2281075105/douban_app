
import 'package:flutter/material.dart';



//class TabBarItem extends BottomNavigationBarItem{
//  BottomNavigationBarItem createItem(String iconName, String title) {
//    return BottomNavigationBarItem(
//        icon: Image.asset("assets/images/tabbar/$iconName.png", width: 30,),
//        activeIcon: Image.asset("assets/images/tabbar/${iconName}_active.png", width: 30,),
//        title: Text(title)
//    );
//  }
//}

BottomNavigationBarItem createItem(String iconName, String title) {
  return BottomNavigationBarItem(
      icon: Image.asset("assets/images/tabbar/$iconName.png", width: 30,),
      activeIcon: Image.asset("assets/images/tabbar/${iconName}_active.png", width: 30,),
      title: Text(title)
  );
}