import 'package:clone_spotify/core/module.dart';
import 'package:clone_spotify/core/modules/splash/splash_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class SplashModule implements Module {
  @override
  List<GetPage> routes = [
    GetPage(name: "/splash", page: () => const SplashPage())
  ];
}
