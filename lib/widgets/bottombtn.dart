import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stokify/pages/education.dart';
import 'package:stokify/service/bottom_controller.dart';

import '../pages/home_page.dart';
import '../pages/settings.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(BottomController());

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CupertinoButton(
          onPressed: () {
            controller.changeValue(1);
            Get.offAll(() => const HomePage(), transition: Transition.fadeIn);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                CupertinoIcons.home,
                color: controller.selectedPage == 1
                    ? Theme.of(context).canvasColor
                    : Colors.white,
              ),
              Text(
                "IPO",
                style: TextStyle(
                  color: controller.selectedPage == 1
                      ? Theme.of(context).canvasColor
                      : Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
        CupertinoButton(
          onPressed: () {
            Get.offAll(() => EducationPage(), transition: Transition.fadeIn);
            controller.changeValue(2);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                CupertinoIcons.book_solid,
                color: controller.selectedPage == 2
                    ? Theme.of(context).canvasColor
                    : Colors.white,
              ),
              Text(
                "Education",
                style: TextStyle(
                  color: controller.selectedPage == 2
                      ? Theme.of(context).canvasColor
                      : Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
        CupertinoButton(
          onPressed: () {
            Get.offAll(() => SettingPage(), transition: Transition.fadeIn);
            controller.changeValue(3);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.settings,
                color: controller.selectedPage == 3
                    ? Theme.of(context).canvasColor
                    : Colors.white,
              ),
              Text(
                "Settings",
                style: TextStyle(
                  color: controller.selectedPage == 3
                      ? Theme.of(context).canvasColor
                      : Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
