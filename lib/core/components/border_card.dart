// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:skincraft/core/theme/app_colors.dart';

class BorderCard extends StatelessWidget {
  final Widget child;
  const BorderCard({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.greyColor, width: 2),
        borderRadius: BorderRadius.circular(10),
        color: AppColor.whiteColor,
      ),
      child: ClipRRect(borderRadius: BorderRadius.circular(10), child: child),
    );
  }
}
