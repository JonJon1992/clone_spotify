import 'package:clone_spotify/core/utils/app_service.dart';
import 'package:get/get.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(AppService().init());
  }
}
