import 'package:antarlaundry/shared/constant.dart';
import 'package:flutter/material.dart';

class OurServices extends StatelessWidget {
  OurServices({
    Key? key,
  }) : super(key: key);

  final List<String> services1 = [
    'Kiloan',
    'Satuan',
    'VIP',
  ];
  final List<String> services2 = [
    'Karpet',
    'Setrika Saja',
    'Express',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 45),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Layanan Kami',
            style: webBold.copyWith(
              color: black,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              services1.length,
              (i) => Column(
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      color: bg,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/${services1[i].toLowerCase()}.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                  Text(
                    services1[i],
                    style: webLight.copyWith(
                      color: black,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              services2.length,
              (i) => Column(
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      color: bg,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/${services2[i].toLowerCase()}.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                  Text(
                    services2[i],
                    style: webLight.copyWith(
                      color: black,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
