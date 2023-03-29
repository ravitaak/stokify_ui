import 'package:get/get.dart';

import '../service/network_controller.dart';

class NetworkBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkController());
  }
}
