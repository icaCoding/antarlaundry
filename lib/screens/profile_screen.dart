import 'package:antarlaundry/screens/login_screen.dart';
import 'package:antarlaundry/shared/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/header_profile.png',
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/profile.png',
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Profile Anda',
                          style: webBold.copyWith(
                            color: black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/settings.png',
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Pengaturan',
                          style: webBold.copyWith(
                            color: black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Tentang',
                      style: webBold.copyWith(
                        color: black,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => LoginScreen());
                      },
                      child: Text(
                        'Keluar',
                        style: webBold.copyWith(
                          color: black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
