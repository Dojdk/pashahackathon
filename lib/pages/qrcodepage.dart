import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pashahackathon/theme/colors.dart';

import '../theme/fonts.dart';

class ScanQrPage extends StatelessWidget {
  static const routeName = '/scan-qr';
  const ScanQrPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
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
              const SizedBox(
                height: 30,
              ),
              const Text('Scan QR code', style: size24weight600),
              const SizedBox(
                height: 15,
              ),
              const Text(' Scan this QR in-app to get discount ',
                  style: size14weight600),
              const SizedBox(
                height: 35,
              ),
              SvgPicture.asset(
                'assets/images/svg/kontakthomeicon.svg',
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Kontakt Home',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: lightRedColor,
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: lightRedColor),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset('assets/images/png/qrcode.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
