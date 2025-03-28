import 'package:flutter/material.dart';
import 'package:skincraft/core/theme/app_colors.dart';
import 'package:skincraft/core/theme/app_sizes.dart';
import 'package:skincraft/core/theme/app_typography.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: context.as.loginPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(context.as.size30 + 16),
                  border: Border.all(
                    color: AppColor.secondaryColor.withOpacity(0.6),
                    width: 6,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(context.as.size30),
                  child: Image.asset(
                    'assets/images/dokter.jpeg',
                    fit: BoxFit.cover,
                    height: context.as.size40,
                  ),
                ),
              ),
              SizedBox(height: context.as.padding),
              Text(
                'Rakha Galih',
                style: AppTypograph.heading1.bold,
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                height: 120,
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: List.generate(4, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          children: [
                            Container(
                              width: 132,
                              padding: EdgeInsets.symmetric(
                                vertical: context.as.padding,
                              ),
                              decoration: const BoxDecoration(
                                color: AppColor.secondaryColor,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ),
                              child: Text('Skin Type',
                                  textAlign: TextAlign.center,
                                  style: AppTypograph.label1.bold),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Container(
                              width: 132,
                              padding: EdgeInsets.symmetric(
                                vertical: context.as.padding,
                              ),
                              decoration: const BoxDecoration(
                                color: AppColor.secondaryColor,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: Text('Combination skin',
                                  textAlign: TextAlign.center,
                                  style: AppTypograph.label2.medium),
                            ),
                          ],
                        ),
                      );
                    }))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
