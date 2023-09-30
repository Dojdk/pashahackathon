import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
// import 'package:share_plus/share_plus.dart';

import '../../pages/qrcodepage.dart';

import '../../theme/colors.dart';
import '../../theme/fonts.dart';

class CopyLink extends StatelessWidget {
  const CopyLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Copy link',
              style: size14weight500,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(ScanQrPage.routeName);
              },
              child: Text(
                'Scan QR',
                style: size14weight500.copyWith(color: purpleColor),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          height: 60,
          padding: const EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
            color: greyColor,
            borderRadius: BorderRadius.circular(11),
          ),
          child: Row(
            children: [
              Text(
                'https://umico.az/',
                style: size14weight500.copyWith(color: purpleColor),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  // Share.share('https://umico.az/');
                },
                icon: SvgPicture.asset('assets/images/svg/shareicon.svg'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
