import 'package:antarlaundry/shared/constant.dart';
import 'package:antarlaundry/widgets/pesanan_aktif.dart';
import 'package:flutter/material.dart';

class PesananScreen extends StatelessWidget {
  const PesananScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/header_home.png',
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 20,
                ),
                margin: EdgeInsets.fromLTRB(
                    35, (MediaQuery.of(context).size.height * 0.23), 35, 0),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Saldo :',
                              style: webRegular.copyWith(
                                color: black,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Rp. 100.000',
                              style: webBold.copyWith(
                                color: black,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Antar Point :',
                              style: webRegular.copyWith(
                                color: black,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '100 point',
                              style: webBold.copyWith(
                                color: green,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: bg,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/saldo.png',
                              width: 30,
                              height: 30,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Add Saldo',
                          style: webRegular.copyWith(
                            color: black,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: bg,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/point.png',
                              width: 30,
                              height: 30,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Get Point',
                          style: webRegular.copyWith(
                            color: black,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.4,
                ),
                child: const PesananAktif(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
