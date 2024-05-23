import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trogon2/commen/layout/grid_layout.dart';
import 'package:trogon2/commen/shapes/container/rounded_container.dart';
import 'package:trogon2/commen/text/section_heading.dart';
import 'package:trogon2/commen/widget/appbar/custom_appbar.dart';
import 'package:trogon2/features/screens/course_screen.dart';
import 'package:trogon2/features/screens/widget/horizontal_list.dart';
import 'package:trogon2/utils/constants/colors.dart';
import 'package:trogon2/utils/constants/image_strings.dart';
import 'package:trogon2/utils/constants/sizes.dart';
import 'package:trogon2/utils/helper/device_helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          const CAppbar(),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(CSizes.defaultSpace),
            child: Column(
              children: [
                SizedBox(
                  height: CHelperFuntions.screenHeight() * .1,
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 40,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CourseScreen(),
                            ));
                          },
                          child: HorizontalListView(index: index));
                    },
                  ),
                ),
                const SizedBox(height: CSizes.spaceBtwSection),
                const CSectionHeading(title: 'Courses', showActionButton: true),
                const SizedBox(height: CSizes.spaceBtwSection),

                //* Rounded
                const HomeGrid(),
                const SizedBox(height: CSizes.spaceBtwSection),

                Stack(
                  children: [
                    CRoundedContainer(
                      backgroundColor: Colors.transparent,
                      height: CHelperFuntions.screenHeight() * .2,
                      width: CHelperFuntions.screenWidth() * .99,
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            child: CRoundedContainer(
                              height: CHelperFuntions.screenHeight() * .14,
                              width: CHelperFuntions.screenWidth() * .923,
                              backgroundColor:
                                  const Color.fromARGB(255, 221, 174, 163),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      width: CHelperFuntions.screenWidth() * .7,
                                      height:
                                          CHelperFuntions.screenHeight() * .1,
                                      child: Text(
                                        'Pratice With Previous Year Question Paper',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineLarge!
                                            .copyWith(
                                                color: Colors.black,
                                                fontSize: 18),
                                        maxLines: 2,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: CColors.thirdColor,
                                  shape: BoxShape.circle),
                              child: const Icon(
                                Icons.arrow_right_alt_outlined,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      right: 20,
                      child: SizedBox(
                        height: CHelperFuntions.screenHeight() * .2,
                        child: Image.asset(
                          CIMages.iconCart,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: CSizes.spaceBtwSection),

                //* latest text series
                const CSectionHeading(
                  title: "Latest Test Series",
                  showActionButton: false,
                ),
                const SizedBox(height: CSizes.spaceBtwItem),

                SizedBox(
                  height: CHelperFuntions.screenHeight() * .13,
                  child: ListView.separated(
                      itemCount: 5,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 10),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return CRoundedContainer(
                          height: CHelperFuntions.screenHeight() * .13,
                          width: CHelperFuntions.screenWidth() * .4,
                          backgroundColor: CColors.secondaryColor,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 18.0),
                                child: Column(
                                  children: [
                                    Text(
                                      "Exam 102 - Biology",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge!
                                          .copyWith(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                    ),
                                    Text(
                                      "10  - 120 Min",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge!
                                          .copyWith(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 18.0),
                                child: CRoundedContainer(
                                  backgroundColor: Colors.white,
                                  recta: true,
                                  x: 5,
                                  y: 5,
                                  width: CHelperFuntions.screenWidth() * .3,
                                  child: Center(
                                      child: Text("Attempt Now",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge!
                                              .copyWith(
                                                  color: CColors.secondaryColor,
                                                  // fontWeight: FontWeight.bold,
                                                  fontSize: 15))),
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}

class HomeGrid extends StatelessWidget {
  const HomeGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CGridLayout(
      itemCount: 6,
      itemBuilder: (p0, p1) => Column(
        children: [
          DottedBorder(
            radius: const Radius.circular(60),
            borderType: BorderType.Circle,
            dashPattern: const [14, 11],
            strokeWidth: 2,
            strokeCap: StrokeCap.butt,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: CRoundedContainer(
                radius: 60,
                height: CHelperFuntions.screenHeight() * .09,
                width: CHelperFuntions.screenWidth() * .2,
                child: const Icon(Icons.abc),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Data'),
          )
        ],
      ),
    );
  }
}
