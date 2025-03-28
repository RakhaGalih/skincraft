import 'package:flutter/material.dart';
import 'package:skincraft/core/components/shop_card.dart';
import 'package:skincraft/core/theme/app_colors.dart';
import 'package:skincraft/core/theme/app_sizes.dart';
import 'package:skincraft/core/theme/app_typography.dart';
import 'package:skincraft/pages/dashboard/home/presentation/screens/detail_product_screen.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final TextEditingController controller = TextEditingController();

  List<String> categories = [
    'Sunscreen',
    'Moisturizer',
    'Toner',
    'Cleanser',
    'Serum',
    'Body Wash'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(context.as.padding),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Cari produk atau brand',
                prefixIcon: const Icon(
                  Icons.search,
                  color: AppColor.primaryColor,
                ),
                focusColor: AppColor.primaryColor,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    color: AppColor.primaryColor,
                    width: 1.0,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    color: AppColor.greyTextColor,
                    width: 1.0,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(categories.length, (index) {
                return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Chip(
                        label: Text(categories[index],
                            style: AppTypograph.label2.regular)));
              })),
            ),
          ),
          SizedBox(
            height: context.as.padding,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(context.as.padding, 0,
                        context.as.padding, context.as.padding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Rekomendasi Produk',
                            style: AppTypograph.heading3.bold),
                        Text(
                            'Tidak disponsori, ini produk yang telah disesuaikan dengan jenis kulit Anda',
                            style: AppTypograph.label2.regular.copyWith(
                              color: AppColor.greyTextColor,
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 260,
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: List.generate(4, (index) {
                        return ShopCard(
                          ontap: () {
                            Navigator.pushNamed(
                                context, DetailProductScreen.route);
                          },
                        );
                      })),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Produk Populer',
                            style: AppTypograph.heading3.bold),
                        Text(
                            'Produk trending yang telah disesuaikan dengan jenis kulit Anda',
                            style: AppTypograph.label2.regular.copyWith(
                              color: AppColor.greyTextColor,
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 260,
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: List.generate(4, (index) {
                        return ShopCard(
                          ontap: () {
                            Navigator.pushNamed(
                                context, DetailProductScreen.route);
                          },
                        );
                      })),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
