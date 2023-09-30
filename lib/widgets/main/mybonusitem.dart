import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

import '../../theme/colors.dart';
import '../../theme/fonts.dart';

class MyBonusItem extends StatelessWidget {
  final String title;
  final String? subtitle;
  const MyBonusItem({super.key, required this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 30023;
    return Column(
      children: [
        Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: lightGreyColor),
          ),
          child: subtitle == null
              ? const Icon(
                  Icons.account_circle_outlined,
                  color: purpleColor,
                  size: 34,
                )
              : Center(
                  child: CountdownTimer(
                    endTime: endTime,
                    textStyle: size16weight600.copyWith(color: purpleColor),
                  ),
                ),
        ),
        Text(title, style: size12weight500),
      ],
    );
  }
}
