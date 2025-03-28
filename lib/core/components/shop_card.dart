// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:skincraft/core/components/border_card.dart';
import 'package:skincraft/core/theme/app_colors.dart';
import 'package:skincraft/core/theme/app_typography.dart';

class ShopCard extends StatelessWidget {
  final VoidCallback ontap;
  const ShopCard({
    super.key,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: GestureDetector(
        onTap: ontap,
        child: BorderCard(
          child: SizedBox(
            width: 140,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/lotion.jpg',
                      height: 140,
                      width: 140,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Ordinary set',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: AppTypograph.label2.bold),
                          const SizedBox(
                            height: 4,
                          ),
                          Text('Atoderm Intensive Gel-Creme',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: AppTypograph.label3.regular
                                  .copyWith(color: AppColor.greyTextColor)),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Rp.145.000',
                            style: AppTypograph.label2.bold
                                .copyWith(color: AppColor.primaryColor),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                      color: AppColor.greenColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    '90%',
                    style: AppTypograph.label3.bold,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
