import 'package:flutter/material.dart';
import 'package:skincraft/core/theme/app_colors.dart';
import 'package:skincraft/core/theme/app_typography.dart';

class DetailProductScreen extends StatefulWidget {
  static const route = 'DetailProduk';
  const DetailProductScreen({super.key});

  @override
  State<DetailProductScreen> createState() => _DetailProductScreenState();
}

class _DetailProductScreenState extends State<DetailProductScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: SafeArea(
                bottom: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 360,
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'assets/images/lotion.jpg',
                                      width: double.infinity,
                                      height: 340,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: AppColor.greyTextColor
                                                .withOpacity(0.10),
                                            width: 2,
                                          ),
                                          color: AppColor.greyTextColor
                                              .withOpacity(0.25),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: const Icon(
                                          Icons.chevron_left,
                                          color: AppColor.greyTextColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 32),
                                      child: Container(
                                        width: 100,
                                        height: 40,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: AppColor.greyTextColor
                                                .withOpacity(0.10),
                                            width: 2,
                                          ),
                                          color: AppColor.whiteColor.withOpacity(0.8),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Text('Beli Tester',
                                            style: AppTypograph.label1.bold),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: Container(
                                          margin: const EdgeInsets.all(8),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 8),
                                          decoration: BoxDecoration(
                                              color: AppColor.greenColor,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Text(
                                            '90%',
                                            style: AppTypograph.label1.bold,
                                          ),
                                        )),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isFavorite = !isFavorite;
                                        });
                                      },
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 20),
                                        child: Container(
                                          width: 44,
                                          height: 44,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color: AppColor.greyColor,
                                              shape: BoxShape.circle,
                                              boxShadow: [
                                                BoxShadow(
                                                    blurRadius: 20,
                                                    offset: const Offset(0, 6),
                                                    color:
                                                        const Color(0xFF0038FF)
                                                            .withOpacity(0.2))
                                              ]),
                                          child: (isFavorite)
                                              ? const Icon(
                                                  Icons.favorite,
                                                  color:
                                                      AppColor.redButtonColor,
                                                  size: 27,
                                                )
                                              : const Icon(
                                                  Icons.favorite_outline,
                                                  color: AppColor.greyTextColor,
                                                  size: 27,
                                                ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'Ordinary set',
                              style: AppTypograph.heading3.bold,
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Atoderm Intensive Gel-Creme',
                              style: AppTypograph.label2.regular,
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Rp.145.000',
                              style: AppTypograph.label1.bold
                                  .copyWith(color: AppColor.primaryColor),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Bahan',
                              style: AppTypograph.label1.bold,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Aqua (Water), Niacinamide, Pentylene Glycol, Zinc Pca, Tamarindus Indica Seed Gum, Carrageenan, Acacia Senegal Gum, Xanthan Gum, Cocoyl Proline, Ethoxydiglycol, Phenoxyethanol, Chlorphenesin',
                              style: AppTypograph.label2.regular,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Deskripsi',
                              style: AppTypograph.label1.bold,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              'The Most-Loved Set includes three of The Ordinary’s most popular products in 30ml sizes. It makes an ideal gift set for those new to skincare, or looking to try something new from The Ordinary.\n\nThe Niacinamide 10% + Zinc 1% (30ml) is a universal serum for blemish-prone skin that boosts skin brightness, improves skin smoothness, and reinforces the skin barrier over time. It contains a high 10% concentration of niacinamide (vitamin b3) and Zinc PCA.\n\nThe Hyaluronic Acid 2% + B5 (with Ceramides) (30ml) is a hydrating serum that smoothes and plumps, while targeting the appearance of wrinkles and textural irregularities. It combines low, medium and high-molecular weight hyaluronic acid molecules and a next-generation HA crosspolymer to support hydration to multiple layers of the skin while strengthening the skin barrier.\n\nThe Caffeine Solution 5% + EGCG (30ml) is a depuffing solution for tired eyes. It reduces the look of puffiness and dark circles in the eye contour, by combining a high concentration of caffeine with a highly-purified epigallocatechin gallatyl glucoside (EGCG).',
                              style: AppTypograph.label2.regular,
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColor.whiteColor,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 20,
                      offset: const Offset(0, -4),
                      color: const Color.fromARGB(255, 5, 29, 118)
                          .withOpacity(0.2))
                ],
              ),
              child: SafeArea(
                top: false,
                child: Row(children: [
                  Text(
                    'Rp.145.000',
                    style: AppTypograph.heading3.bold
                        .copyWith(color: AppColor.primaryColor),
                  ),
                  const Spacer(),
                  IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: AppColor.whiteColor,
                        shape: CircleBorder(
                          side: BorderSide(
                            color: AppColor.greyTextColor.withOpacity(0.25),
                            width: 2,
                          ),
                        ),
                        padding: const EdgeInsets.all(16),
                      ),
                      onPressed: () {},
                      icon: const Icon(Icons.add_shopping_cart)),
                  const SizedBox(
                    width: 12,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 16),
                      backgroundColor: AppColor.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Beli Sekarang',
                      style: AppTypograph.label2.bold
                          .copyWith(color: AppColor.whiteColor),
                    ),
                  )
                ]),
              ))
        ],
      ),
    );
  }
}
