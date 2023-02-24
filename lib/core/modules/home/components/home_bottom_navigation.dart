import 'package:clone_spotify/core/modules/home/controllers/home_bottom_navigation.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeBottomNavigation
    extends GetResponsiveView<HomeBottomNavigationController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeBottomNavigationController>(
        builder: (ctr) => Container(
          child: BottomNavigationBar(
            backgroundColor: Colors.black54,elevation: 0,
            selectedFontSize: 12,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            selectedLabelStyle: const TextStyle(
                color: Colors.white,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400),
            unselectedFontSize: 11,
            unselectedLabelStyle: const TextStyle(
                fontFamily: 'Inter', fontWeight: FontWeight.w200),
            items: barItems(ctr.navTabs),
            currentIndex: ctr.getIndexFromTabId(ctr.currentTab),
            iconSize: 28,
            type: BottomNavigationBarType.fixed,
            onTap: ctr.setCurrentTabIndex,
          ),
        ));
  }
}

List<BottomNavigationBarItem> barItems(List<NavItem> list) {
  return list
      .map((e) => BottomNavigationBarItem(
          icon: Icon(e.icon), label: e.label, tooltip: e.label))
      .toList();
}
