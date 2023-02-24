import 'package:clone_spotify/core/modules/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum TabId { MAIN, SEARCH, LIBRARY }

class NavItem {
  TabId id;
  IconData icon;
  String label;

  NavItem({required this.id, required this.icon, required this.label});
}

class HomeBottomNavigationController extends GetxController {
  TabId currentTab = TabId.MAIN;
  List<NavItem> get navTabs => [
        NavItem(id: TabId.MAIN, icon: Icons.home_filled, label: 'Início'),
        NavItem(id: TabId.SEARCH, icon: Icons.search_outlined, label: 'Buscar'),
        NavItem(
            id: TabId.MAIN, icon: Icons.library_music, label: 'Sua Biblioteca')
      ];

  Map<TabId, Widget> get tabs => {
        TabId.MAIN: const HomePage(),
        TabId.SEARCH: Container(
          color: Colors.red,
        ),
        TabId.LIBRARY: Container(
          color: Colors.yellow,
        )
      };

  void setCurrentTabIndex(int index) => setCurrentTab(navTabs[index].id);

  void setCurrentTab(TabId tabId) {
    currentTab = tabId;
    update();
  }

  int getIndexFromTabId(TabId tabId) {
    return navTabs.indexWhere((element) => element.id == tabId);
  }
}
