import 'package:flutter/material.dart';
import 'package:trogon2/utils/constants/sizes.dart';

class CGridLayout extends StatelessWidget {
  const CGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 130,
    required this.itemBuilder,
  });
  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: CSizes.gridViewSpacing + 20,
        crossAxisSpacing: CSizes.gridViewSpacing + 30,
        mainAxisExtent: mainAxisExtent,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
