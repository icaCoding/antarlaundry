import 'package:antarlaundry/screens/home_screen.dart';
import 'package:antarlaundry/screens/pesanan_screen.dart';
import 'package:antarlaundry/screens/profile_screen.dart';
import 'package:antarlaundry/widgets/bottom_navigation_widget.dart';
import 'package:flutter/material.dart';

class WrapperScreen extends StatefulWidget {
  const WrapperScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<WrapperScreen> createState() => _WrapperScreenState();
}

class _WrapperScreenState extends State<WrapperScreen> {
  int selectedIndex = 0;

  final List<Widget> screens = const [
    HomeScreen(),
    PesananScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomSheet: BottomNavigationWidget(
        selectedIndex: selectedIndex,
        onTap: (val) {
          setState(() {
            selectedIndex = val;
          });
        },
      ),
    );
  }
}
