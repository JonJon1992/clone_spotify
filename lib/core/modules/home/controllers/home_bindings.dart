import 'package:clone_spotify/core/modules/home/controllers/home_bottom_navigation.controller.dart';
import 'package:get/get.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeBottomNavigationController());
  }
}
