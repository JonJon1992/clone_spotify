import 'package:clone_spotify/core/modules/home/home_module.dart';
import 'package:clone_spotify/core/modules/splash/splash_module.dart';
import 'package:get/get.dart';

class PageModules {
  List<GetPage> routes = [...SplashModule().routes, ...HomeModule().routes];
}
