import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skincraft/core/theme/app_colors.dart';
import 'package:skincraft/pages/dashboard/home/models/provider_model.dart';
import 'package:skincraft/pages/dashboard/home/presentation/screens/home_patient_screen.dart';

class NavbarPatientScreen extends StatelessWidget {
  static const route = '/navbarPasien';
  const NavbarPatientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProviderModel>(
        create: (context) => ProviderModel(),
        child: Consumer<ProviderModel>(builder: (context, data, child) {
          List<Widget> widgetOptions = <Widget>[
            const HomePatientScreen(),
             const HomePatientScreen(),
          ];
          return Scaffold(
            body: widgetOptions[data.selectedNavBar],
            bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profil',
                ),
              ],
              currentIndex: data.selectedNavBar,
              selectedItemColor: AppColor.primaryColor,
              onTap: data.onNavBarTapped,
            ),
          );
        }));
  }
}
