import 'package:flutter/material.dart';

import 'package:pashahackathon/widgets/main/appbar.dart';
import 'package:pashahackathon/widgets/main/bottomsheet.dart';
import 'package:pashahackathon/widgets/main/link.dart';
import 'package:pashahackathon/widgets/main/mybonus.dart';
import 'package:pashahackathon/widgets/main/selectedmarket.dart';

import '../theme/fonts.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(),
                  SizedBox(
                    height: 30,
                  ),
                  SelectedMarket(),
                  SizedBox(
                    height: 30,
                  ),
                 
                  MyBonys(),
                  SizedBox(
                    height: 30,
                  ),
                  CopyLink(),
                ],
              ),
            ),
            CustomBottomSheet(),
          ],
        ),
      ),
    );
  }
}
