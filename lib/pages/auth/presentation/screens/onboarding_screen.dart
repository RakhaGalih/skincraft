import 'package:flutter/material.dart';
import 'package:skincraft/core/components/app_button.dart';
import 'package:skincraft/core/theme/app_colors.dart';
import 'package:skincraft/core/theme/app_sizes.dart';
import 'package:skincraft/core/theme/app_typography.dart';
import 'package:skincraft/pages/auth/models/onboarding_model.dart';

class OnboardingScreen extends StatefulWidget {
  static const route = '/onboarding';
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();
  final List<OnboardingModel> _onboardingData = [
    OnboardingModel(
      title: 'Kenali Kulitmu, Dapatkan Perawatan Terbaik!',
      description:
          'Temukan skincare yang cocok berdasarkan komposisi bahan.',
      image: 'assets/images/serum.jpg',
    ),
    OnboardingModel(
      title:
          'Diskusikan dan berbagi pengalaman dengan pengguna lain.',
      description:
          'Jelajahi jenis kulitmu, pahami kebutuhannya, dan dapatkan saran dari komunitas.',
      image: 'assets/images/lotion.jpg',
    ),
    OnboardingModel(
      title: 'Uji Coba Skincare Sebelum Membeli!',
      description:
          'Rasakan manfaat produk secara langsung, temukan yang paling cocok untuk kulitmu, dan buat keputusan yang tepat.',
      image: 'assets/images/skincare.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: [
        PageView.builder(
          controller: _pageController,
          physics: const ClampingScrollPhysics(),
          itemCount: _onboardingData.length,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Image.asset(
                  _onboardingData[index].image,
                  height: context.as.appHeight,
                  fit: BoxFit.fitHeight,
                ),
                Container(
                  height: context.as.appHeight,
                  width: context.as.appWidth,
                  color: Colors.black.withOpacity(0.72),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _onboardingData[index].title,
                            style: AppTypograph.heading1.bold.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            _onboardingData[index].description,
                            style: AppTypograph.body3.regular.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 90),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        ),
        Align(
          alignment: Alignment.topCenter,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  _onboardingData.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    height: 4,
                    width: 48,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: _selectedIndex == index
                          ? AppColor.primaryColor
                          : AppColor.whiteColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextButton(
                onPressed: () {
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Skip',
                      style: AppTypograph.body3.bold.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    const Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (_selectedIndex == 0)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: AppButton(
                          child: Text(
                            'Next',
                            style: AppTypograph.body3.bold
                                .copyWith(color: AppColor.whiteColor),
                          ),
                          onPressed: () {
                            _pageController.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut);
                          },
                        )),
                      ],
                    ),
                  if (_selectedIndex == _onboardingData.length - 1)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: AppButton(
                          colorButton: AppColor.whiteColor,
                          colorOverlay: AppColor.primaryColor,
                          child: Text(
                            'Prev',
                            style: AppTypograph.body3.bold.copyWith(
                              color: AppColor.blackColor,
                            ),
                          ),
                          onPressed: () {
                            _pageController.previousPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut);
                          },
                        )),
                        const SizedBox(width: 12),
                        Expanded(
                            child: AppButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.person_outline,
                                color: AppColor.whiteColor,
                                size: 18,
                              ),
                              Text(
                                'Login',
                                style: AppTypograph.body3.bold.copyWith(
                                  color: AppColor.whiteColor,
                                ),
                              ),
                            ],
                          ),
                          onPressed: () {
                          },
                        )),
                      ],
                    ),
                  if (_selectedIndex > 0 &&
                      _selectedIndex < _onboardingData.length - 1)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: AppButton(
                          colorButton: AppColor.whiteColor,
                          colorOverlay: AppColor.primaryColor,
                          child: Text(
                            'Prev',
                            style: AppTypograph.body3.bold.copyWith(
                              color: AppColor.blackColor,
                            ),
                          ),
                          onPressed: () {
                            _pageController.previousPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut);
                          },
                        )),
                        const SizedBox(width: 12),
                        Expanded(
                            child: AppButton(
                          child: Text(
                            'Next',
                            style: AppTypograph.body3.bold
                                .copyWith(color: AppColor.whiteColor),
                          ),
                          onPressed: () {
                            _pageController.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut);
                          },
                        )),
                      ],
                    ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('User Terms',
                          style: AppTypograph.body3.regular.copyWith(
                              decoration: TextDecoration.underline,
                              decorationColor: AppColor.whiteColor,
                              color: AppColor.whiteColor)),
                      Text('Privacy',
                          style: AppTypograph.body3.regular.copyWith(
                              decoration: TextDecoration.underline,
                              decorationColor: AppColor.whiteColor,
                              color: AppColor.whiteColor)),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
