import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme/fonts.dart';
import 'mybonusitem.dart';

class MyBonys extends StatelessWidget {
  const MyBonys({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'My bonus',
          style: size14weight500,
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Text(
                  '1,3',
                  style: size40weight500,
                ),
                const SizedBox(
                  width: 5,
                ),
                SvgPicture.asset(
                  'assets/images/svg/umicoinicon.svg',
                ),
              ],
            ),
            const MyBonusItem(
              title: 'My referrals',
            ),
            const MyBonusItem(
              title: 'My referrals',
              subtitle: '',
            ),
          ],
        ),
      ],
    );
  }
}
