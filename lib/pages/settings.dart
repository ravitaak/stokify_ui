// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:stokify/service/bottom_controller.dart';
// import 'package:velocity_x/velocity_x.dart';

import '../widgets/bottombar.dart';
import '../widgets/clippath.dart';
import '../widgets/setting_wid.dart';
import 'home_page.dart';

class SettingPage extends StatelessWidget {
  SettingPage({super.key});
  final controller = Get.find<BottomController>();
  Future<bool> _onWillPop() {
    controller.changeValue(1);
    Get.offAll(() => const HomePage(), transition: Transition.fadeIn);
    return Future.value(false);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        // Bottem Nav Bar
        bottomNavigationBar: const BottemNavBar(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(0),
              child: Column(
                children: [
                  // First Row
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              Center(
                                child: Text(
                                  "Settings",
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 0,
                                child: IconButton(
                                  splashRadius: 26,
                                  onPressed: () {
                                    //Share app
                                    Share.share(
                                        'check out my website\n https://example.com',
                                        subject: 'Look what I made!');
                                  },
                                  icon: Icon(
                                    Icons.share,
                                    color: Theme.of(context).primaryColor,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipPath(
                          clipper: CustomClipPath(),
                          child: Container(
                            padding: const EdgeInsets.only(left: 10, right: 20),
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                            ),
                            child: const Text("General",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const SettingWidget1(
                          color: Color.fromRGBO(105, 97, 231, 1),
                          name: "Dark Mode",
                          icon: Icons.dark_mode,
                        ),
                        const SizedBox(height: 8),
                        const SettingWidget1(
                          color: Color.fromRGBO(167, 227, 198, 1),
                          name: "App Updates",
                          icon: Icons.update,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Divider(
                            height: 2,
                            color: Theme.of(context).dividerColor,
                          ),
                        ),
                        const SizedBox(height: 8),
                        //Feedback
                        ClipPath(
                          clipper: CustomClipPath(),
                          child: Container(
                            padding: const EdgeInsets.only(left: 10, right: 20),
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                            ),
                            child: const Text("Feedback",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ),
                        ),
                        const SizedBox(height: 8),

                        SettingWidget2(
                          onPress: () {},
                          color: const Color.fromRGBO(69, 114, 118, 1),
                          name: "Report A Bug!",
                          icon: Icons.bug_report,
                        ),
                        SettingWidget2(
                          onPress: () {},
                          color: const Color.fromRGBO(132, 71, 148, 1),
                          name: "Send Feedback",
                          icon: Icons.thumb_up,
                        ),
                        const SizedBox(height: 8),
                        //Details
                        ClipPath(
                          clipper: CustomClipPath(),
                          child: Container(
                            padding: const EdgeInsets.only(left: 10, right: 20),
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                            ),
                            child: const Text("Details",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ),
                        ),
                        const SizedBox(height: 8),
                        SettingWidget2(
                          onPress: () {},
                          color: const Color.fromRGBO(131, 174, 118, 1),
                          name: "About App",
                          icon: Icons.info_outline,
                        ),
                        SettingWidget2(
                          onPress: () {},
                          color: const Color.fromRGBO(239, 133, 115, 1),
                          name: "Disclaimer",
                          icon: Icons.warning,
                        ),
                        SettingWidget2(
                          onPress: () {},
                          color: const Color.fromRGBO(112, 147, 222, 1),
                          name: "Privacy Policy",
                          icon: Icons.privacy_tip,
                        ),
                        SettingWidget2(
                          onPress: () {},
                          color: const Color.fromRGBO(190, 86, 109, 1),
                          name: "Contact Us",
                          icon: Icons.email,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
