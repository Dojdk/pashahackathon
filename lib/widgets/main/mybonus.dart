import 'package:flutter/material.dart';

import '../../theme/fonts.dart';
import 'mybonusitem.dart';

class MyBonys extends StatelessWidget {
  const MyBonys({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My bonus',
          style: size14weight500,
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '1,3%',
              style: size40weight500,
            ),
            MyBonusItem(
              title: 'My referrals',
            ),
            MyBonusItem(
              title: 'My referrals',
              subtitle: '',
            ),
          ],
        ),
      ],
    );
  }
}
