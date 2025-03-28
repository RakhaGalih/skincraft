// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:skincraft/core/theme/app_colors.dart';
import 'package:skincraft/core/theme/app_sizes.dart';

class CardContainer extends StatelessWidget {
  final Widget child;
  const CardContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: context.as.padding),
      padding: EdgeInsets.all(context.as.padding),
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColor.greyTextColor.withOpacity(0.1),
            blurRadius: 12.0,
          ),
        ],
      ),
      child: child,
    );
  }
}
