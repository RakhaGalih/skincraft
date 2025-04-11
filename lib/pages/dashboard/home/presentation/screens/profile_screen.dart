import 'package:flutter/material.dart';
import 'package:skincraft/core/components/border_card.dart';
import 'package:skincraft/core/theme/app_colors.dart';
import 'package:skincraft/core/theme/app_sizes.dart';
import 'package:skincraft/core/theme/app_typography.dart';
import 'package:skincraft/pages/dashboard/home/models/skin_model.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<SkinModel> skinTypes = [
    SkinModel(
      title: 'Skin Type',
      value: 'Combination skin',
    ),
    SkinModel(
      title: 'Senstivity',
      value: 'Sensitive',
    ),
    SkinModel(
      title: 'Elasticity',
      value: 'Somewhat elastic',
    ),
    SkinModel(
      title: 'Acne Proneness',
      value: 'Clear',
    ),
    SkinModel(
      title: 'Tone',
      value: 'Uneven tone',
    ),
    SkinModel(
      title: 'Texture',
      value: 'Smooth',
    ),
  ];
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
                    color: AppColor.primaryColor.withOpacity(0.6),
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
                        children: List.generate(skinTypes.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: BorderCard(
                          child: Column(
                            children: [
                              Container(
                                width: 132,
                                padding: EdgeInsets.symmetric(
                                  vertical: context.as.padding,
                                ),
                                decoration: const BoxDecoration(
                                  color: AppColor.primaryColor,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                ),
                                child: Text(skinTypes[index].title,
                                    textAlign: TextAlign.center,
                                    style: AppTypograph.label1.bold),
                              ),
                              
                              Container(
                                width: 132,
                                padding: EdgeInsets.symmetric(
                                  vertical: context.as.padding,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColor.primaryColor.withOpacity(0.6),
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                                child: Text(skinTypes[index].value,
                                    textAlign: TextAlign.center,
                                    style: AppTypograph.label2.medium),
                              ),
                            ],
                          ),
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
