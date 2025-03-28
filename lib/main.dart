import 'package:flutter/material.dart';
import 'package:skincraft/core/theme/app_theme.dart';
import 'package:skincraft/pages/auth/presentation/screens/login_screen.dart';
import 'package:skincraft/pages/auth/presentation/screens/onboarding_screen.dart';
import 'package:skincraft/pages/dashboard/home/presentation/screens/detail_product_screen.dart';
import 'package:skincraft/pages/dashboard/navbar_patient_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.theme,
      home: const Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
      initialRoute: OnboardingScreen.route,
      routes: {
        // Auth
        OnboardingScreen.route: (context) => const OnboardingScreen(),
        LoginScreen.route: (context) => const LoginScreen(),
        // Dashboard
        NavbarPatientScreen.route: (context) => const NavbarPatientScreen(),
        DetailProductScreen.route: (context) => const DetailProductScreen()
      },
    );
  }
}
