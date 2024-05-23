import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trogon2/commen/images/c_circular_image.dart';
import 'package:trogon2/commen/shapes/container/rounded_container.dart';
import 'package:trogon2/commen/widget/appbar/rounded_appbar_container.dart';
import 'package:trogon2/utils/constants/colors.dart';
import 'package:trogon2/utils/constants/image_strings.dart';
import 'package:trogon2/utils/device/device_util.dart';
import 'package:trogon2/utils/helper/device_helper.dart';

class CAppbar extends StatelessWidget {
  const CAppbar(
      {super.key,
      this.title,
      this.showBackArrow = false,
      this.leadingIcon,
      this.actions,
      this.leadingOnPressed,
      this.centerTitle = false});

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  final bool? centerTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: CRoundedAppbarContainer(
          width: double.infinity,
          height: CDeviceUtils.getAppBarHeight() * 3.50,
          backgroundColor: CColors.secondaryColor,
          child: Padding(
            padding: const EdgeInsets.only(top: 35.0, left: 25, right: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 0),
                  child: UpperAppBar(),
                ),
                const SizedBox(
                  height: 25,
                ),
                CRoundedContainer(
                  backgroundColor: Colors.white,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: CHelperFuntions.screenWidth() * .55,
                          child: TextFormField(
                            decoration: const InputDecoration(
                                hintText: 'select Course',
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                      CRoundedContainer(
                        recta: true,
                        x: 10,
                        y: 10,
                        backgroundColor: CColors.thirdColor,
                        radius: 20,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                'Change',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                        color: Colors.white, fontSize: 16),
                              ),
                              const Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 5.0),
                                child: Icon(
                                  Iconsax.arrow_2,
                                  size: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class UpperAppBar extends StatelessWidget {
  const UpperAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi Good Morning !',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.white),
            ),
            Text(
              'john',
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
        const Row(
          children: [
            CRoundedContainer(
              backgroundColor: Colors.white,
              height: 25,
              width: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 7.0, right: 1),
                    child: Text(
                      '10',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 182, 73)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 0.0),
                    child: Icon(Iconsax.coin_11,
                        size: 17, color: Color.fromARGB(255, 255, 182, 73)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: CCircularImage(
                fit: BoxFit.cover,
                image: CIMages.iconUser,
                height: 40,
                width: 40,
              ),
            )
          ],
        ),
      ],
    );
  }
}
