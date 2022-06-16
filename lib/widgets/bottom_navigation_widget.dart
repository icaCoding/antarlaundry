import 'package:antarlaundry/shared/constant.dart';
import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;

  BottomNavigationWidget({
    Key? key,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  final List<String> menus = [
    'Home',
    'Pesanan',
    'Akun',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 77,
      color: white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          menus.length,
          (i) => GestureDetector(
            onTap: () => onTap(i),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/icons/${menus[i].toLowerCase()}' +
                      (i == selectedIndex ? '_aktif.png' : '.png'),
                  width: 35,
                  height: 35,
                ),
                Text(
                  menus[i],
                  style: webRegular.copyWith(
                    color: i == selectedIndex ? green : grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
