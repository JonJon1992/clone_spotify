import 'package:clone_spotify/core/module.dart';
import 'package:clone_spotify/core/modules/home/controllers/home_bindings.dart';
import 'package:clone_spotify/core/modules/home/home_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class HomeModule implements Module {
  @override
  List<GetPage> routes = [
    GetPage(
        name: '/home', page: () => const HomePage(), binding: HomeBindings())
  ];
}
