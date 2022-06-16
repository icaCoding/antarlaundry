import 'package:antarlaundry/screens/login_screen.dart';
import 'package:antarlaundry/screens/register_screen.dart';
import 'package:antarlaundry/shared/constant.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              'assets/images/bg.png',
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/courier.png',
                  width: 89,
                  height: 89,
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Antar',
                      style: ptSansNarrow.copyWith(
                        fontSize: 64,
                        color: black,
                      ),
                    ),
                    Text(
                      'Laundry',
                      style: webLight.copyWith(
                        color: black,
                        fontSize: 24,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 80),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Let’s Get Start!',
                    style: webBold.copyWith(
                      color: black,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const RegisterScreen(),
                      ),
                    ),
                    child: Container(
                      width: 220,
                      height: 54,
                      decoration: BoxDecoration(
                        color: green,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Text(
                          'Buat Akun',
                          style: webBold.copyWith(
                            color: white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const LoginScreen(),
                      ),
                    ),
                    child: Container(
                      width: 220,
                      height: 54,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: green,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Text(
                          'Masuk',
                          style: webBold.copyWith(
                            color: black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
