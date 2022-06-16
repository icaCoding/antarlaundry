import 'package:antarlaundry/shared/constant.dart';
import 'package:antarlaundry/widgets/pesanan_widget.dart';
import 'package:flutter/material.dart';

class PesananAktif extends StatelessWidget {
  const PesananAktif({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 45),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Pesanan Aktif',
            style: webBold.copyWith(
              color: black,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const PesananWidget(),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Detail Item Pesanan',
            style: webBold.copyWith(
              color: black,
              fontSize: 18,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(bottom: 4),
            color: grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '(2) Jas atau Blazer',
                  style: webBold.copyWith(
                    color: black,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Rp. 12.000/pc',
                  style: webBold.copyWith(
                    color: black,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(bottom: 4),
            color: grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '(2) Sepatu',
                  style: webBold.copyWith(
                    color: black,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Rp. 10.000/pc',
                  style: webBold.copyWith(
                    color: black,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(bottom: 4),
            color: grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '(1) Sarung',
                  style: webBold.copyWith(
                    color: black,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Rp. 12.000/pc',
                  style: webBold.copyWith(
                    color: black,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
