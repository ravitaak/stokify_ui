import 'package:flutter/material.dart';

import 'bottombtn.dart';

class BottemNavBar extends StatelessWidget {
  const BottemNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(left: 15, right: 15),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
        color: Theme.of(context).primaryColor,
      ),
      height: 80,
      child: const BottomButton(),
    );
  }
}
