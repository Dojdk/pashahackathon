import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/fonts.dart';
import 'discountitem.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  DraggableScrollableSheet(
              initialChildSize: 0.4,
              minChildSize: 0.4,
              maxChildSize: 0.7,
              builder:
                  (BuildContext context, ScrollController scrollController) =>
                      Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  border: const Border(
                      left: BorderSide(
                        color: purpleColor,
                        width: 2,
                      ),
                      top: BorderSide(
                        color: purpleColor,
                        width: 2,
                      ),
                      right: BorderSide(
                        color: purpleColor,
                        width: 2,
                      ),
                      bottom: BorderSide(
                        color: purpleColor,
                        width: 0,
                      )),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ListView(
                    controller: scrollController,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Align(
                        child: Container(
                          width: 55,
                          height: 3,
                          color: purpleColor,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'My Discounts',
                        style: size14weight500,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                            maxHeight:
                                MediaQuery.of(context).size.height * 0.55),
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  childAspectRatio: 0.75,
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10),
                          itemBuilder: (context, index) => const DiscountItem(),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
  }
}