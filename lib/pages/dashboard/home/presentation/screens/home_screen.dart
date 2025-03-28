import 'package:flutter/material.dart';
import 'package:skincraft/core/components/card_container.dart';
import 'package:skincraft/core/theme/app_colors.dart';
import 'package:skincraft/core/theme/app_sizes.dart';
import 'package:skincraft/core/theme/app_typography.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Home Screen',
          style: AppTypograph.heading1.bold.copyWith(
            color: AppColor.primaryColor,
          ),
        ),
      ),
    );
  }
}
