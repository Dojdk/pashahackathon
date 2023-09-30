import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme/colors.dart';
import '../../theme/fonts.dart';

class SelectedMarket extends StatelessWidget {
  const SelectedMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Selected Shop',
          style: size14weight500,
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: lightGreyColor),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/images/svg/kontakthomeicon.svg',
                height: 30,
                width: 30,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                'Kontakt Home',
                style: size18weight600.copyWith(color: lightRedColor),
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios,
                color: lightGreyColor,
                size: 15,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
