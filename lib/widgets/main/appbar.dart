import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../theme/colors.dart';
import '../../theme/fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          child: SizedBox(
            width: 70,
            child: Row(
              children: [
                SvgPicture.asset('assets/images/svg/backicon.svg'),
                const SizedBox(
                  width: 9,
                ),
                const Text('Back', style: size14weight500),
              ],
            ),
          ),
        ),
        const Text(
          'Portfolio',
          style: size16weight600,
        ),
        SizedBox(
            width: 70,
            child: Text('Terms',
                textAlign: TextAlign.end,
                style: size14weight500.copyWith(color: purpleColor))),
      ],
    );
  }
}
