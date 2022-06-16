import 'package:antarlaundry/shared/constant.dart';
import 'package:flutter/material.dart';

class PesananWidget extends StatelessWidget {
  const PesananWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: black.withOpacity(0.4),
            offset: const Offset(0.0, 4.0),
            blurRadius: 4,
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/machine.png',
            width: 40,
            height: 40,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Pesanan No. 0002142',
                style: webSemiBomd.copyWith(
                  color: black,
                  fontSize: 18,
                ),
              ),
              Text(
                'Sudah selesai',
                style: webLight.copyWith(
                  color: green,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
