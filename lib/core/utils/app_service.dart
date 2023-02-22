import 'package:get/get.dart';

class AppService extends GetxService {
  Future<void> init() async {
    await .5.delay();
    Get.offAllNamed('/home');
  }
}
