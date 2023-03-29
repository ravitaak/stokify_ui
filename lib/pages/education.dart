import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../service/bottom_controller.dart';
import '../widgets/bottombar.dart';
import 'home_page.dart';

class EducationPage extends StatelessWidget {
  EducationPage({super.key});
  final controller = Get.find<BottomController>();
  Future<bool> _onWillPop() {
    controller.changeValue(1);
    Get.offAll(() => const HomePage(), transition: Transition.fadeIn);
    return Future.value(false);
  }

  @override
  Widget build(BuildContext context) {
    // var controller = Get.find<NetworkController>();
    return WillPopScope(
      onWillPop: _onWillPop,
      child: const Scaffold(
        // Bottem Nav Bar
        bottomNavigationBar: BottemNavBar(),
        body: Center(),
      ),
    );
  }
}
