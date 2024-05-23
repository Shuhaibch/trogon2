import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trogon2/utils/constants/colors.dart';

class CSectionHeading extends StatelessWidget {
  const CSectionHeading({
    super.key,
    this.textColor,
    this.showActionButton = true,
    required this.title,
    this.buttonTitle = "See All",
    this.onPressed,
  });
  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .apply(color: Colors.black),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: onPressed,
                child: Text(
                  buttonTitle,
                  style: TextStyle(
                      color: CColors.thirdColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
      ],
    );
  }
}
