import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/theme.dart';

class SettingWidget1 extends StatefulWidget {
  const SettingWidget1(
      {super.key, required this.name, required this.color, required this.icon});
  final String name;
  final Color? color;
  final IconData icon;
  @override
  State<SettingWidget1> createState() => _SettingWidget1State();
}

class _SettingWidget1State extends State<SettingWidget1> {
  bool _flutter = Get.isDarkMode ? true : false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).secondaryHeaderColor,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child: SwitchListTile(
            value: _flutter,
            onChanged: (value) {
              Get.changeTheme(Get.isDarkMode
                  ? lightThemeData(context)
                  : darkThemeData(context));
              setState(() {
                _flutter = value;
              });
            },
            title: widget.name.text.xl.make(),
            secondary: CircleAvatar(
              backgroundColor: widget.color,
              child: Icon(
                widget.icon,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class SettingWidget2 extends StatelessWidget {
  final String name;
  final Color? color;
  final IconData icon;
  final onPress;
  const SettingWidget2({
    Key? key,
    required this.icon,
    required this.color,
    required this.onPress,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).secondaryHeaderColor,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child: ListTile(
            onTap: onPress,
            title: name.text.xl.make(),
            leading: CircleAvatar(
              backgroundColor: color,
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0),
        ),
      ],
    );
  }
}
