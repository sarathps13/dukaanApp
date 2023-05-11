import 'package:dukaan_app1/screens/additionalInfo.dart';
import 'package:dukaan_app1/screens/cataloScreen.dart';
import 'package:dukaan_app1/screens/manageStore.dart';
import 'package:dukaan_app1/screens/paymentScreen.dart';
import 'package:dukaan_app1/screens/premiumScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;
  final tabs = [
    dukaanPremium(),
    PaymentView(),
    viewCatalog(),
    ManageScreen(),
    MoreInfo()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet), label: 'Orders'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.grid_view_outlined,
                size: 28,
              ),
              label: 'Products'),
          BottomNavigationBarItem(icon: Icon(Icons.layers), label: 'Manage'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                size: 33,
              ),
              label: 'Account'),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
