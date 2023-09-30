import 'package:flutter/material.dart';
import 'package:pashahackathon/theme/fonts.dart';

import '../../theme/colors.dart';

class DiscountItem extends StatelessWidget {
  const DiscountItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(11),
        ),
        border: Border.all(color: lightGreyColor),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/png/dryer.png'),
            Container(
              height: 20,
              width: 30,
              decoration: BoxDecoration(
                color: pinkColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Center(
                child: Text(
                  '20%',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const Text(
              'Dyson a50',
              style: size12weight500,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '458.23 ₼',
                  style: size12weight500.copyWith(color: pinkColor),
                ),
                Text(
                  '500 ₼',
                  style: size8weight500.copyWith(
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
