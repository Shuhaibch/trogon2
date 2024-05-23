

import 'package:flutter/material.dart';
import 'package:trogon2/commen/shapes/container/rounded_container.dart';
import 'package:trogon2/utils/helper/device_helper.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return CRoundedContainer(
      height: CHelperFuntions.screenHeight() * .1,
      width: CHelperFuntions.screenWidth() * .22,
      recta: true,
      x: 10,
      y: 10,
      backgroundColor: index % 3 == 0
          ? const Color.fromARGB(255, 124, 16, 240)
          : index % 3 == 1
              ? const Color.fromARGB(255, 240, 103, 66)
              : const Color.fromARGB(255, 51, 182, 145),
      child: Column(
        children: [
          SizedBox(
            height: CHelperFuntions.screenHeight() * .07,
            width: CHelperFuntions.screenWidth() * .22,
            child: const Icon(
              Icons.book,
            ),
          ),
          Expanded(
            child: Container(
              width: CHelperFuntions.screenWidth() * .22,
              decoration: BoxDecoration(
                color: index % 3 == 0
                    ? const Color.fromARGB(255, 80, 9, 156)
                    : index % 3 == 1
                        ? const Color.fromARGB(255, 128, 51, 30)
                        : const Color.fromARGB(255, 25, 100, 79),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Center(
                  child: Text(
                'Exam',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.white, fontSize: 16),
              )),
            ),
          )
        ],
      ),
    );
  }
}
