import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trogon2/commen/shapes/container/rounded_container.dart';
import 'package:trogon2/utils/constants/colors.dart';
import 'package:trogon2/utils/constants/sizes.dart';
import 'package:trogon2/utils/helper/device_helper.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: CHelperFuntions.screenHeight() * .25,
                color: Colors.transparent,
                width: double.infinity,
              ),
              Container(
                height: CHelperFuntions.screenHeight() * .2,
                color: CColors.secondaryColor,
                width: double.infinity,
              ),
              const Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.all(CSizes.defaultSpace + 25),
                  child: Text(
                    "Course Name",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 10,
                child: DayWidget(),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class DayWidget extends StatelessWidget {
  const DayWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CRoundedContainer(
      radius: 80,
      height: 90,
      width: 60,
      showBorder: true,
      backgroundColor: CColors.thirdColor,
      borderColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'DAY',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '3',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '03/04',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
