import 'package:antarlaundry/screens/home_screen.dart';
import 'package:antarlaundry/screens/wrapper_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController {
  RxBool isHiddenpassword = true.obs;
  RxString email = "".obs;

  late TextEditingController userID = TextEditingController();
  late TextEditingController password = TextEditingController();

  late TextEditingController ReguserID = TextEditingController();
  late TextEditingController Regpassword = TextEditingController();

  Future<void> register() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: ReguserID.text,
        password: Regpassword.text,
      );
      Get.snackbar("Akun berhasil ditambahkan", "${(ReguserID.text)}",
          backgroundColor: Colors.green, colorText: Colors.white);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Get.snackbar("Eror", "Password Terlalu Sedikit",
            backgroundColor: Colors.red, colorText: Colors.white);
      } else if (e.code == 'email-already-in-use') {
        Get.snackbar(
            "Eror", "Email Sudah di gunakan silahkan gunakan email yang lain",
            backgroundColor: Colors.red, colorText: Colors.white);
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> login() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: userID.text,
        password: password.text,
      );
      print('berhasil Login dengan akun');
      userID.clear();
      password.clear();
      print(credential.user!.email);
      email(credential.user!.email);
      Get.snackbar(
          "berhasil login dengan akun", credential.user!.email.toString(),
          backgroundColor: Colors.green, colorText: Colors.white);
      Get.to(() => const WrapperScreen());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.snackbar("Email tidak ditemukan", "${(userID.text)}",
            backgroundColor: Colors.red, colorText: Colors.white);
      } else if (e.code == 'wrong-password') {
        Get.snackbar("Password dengan  ${(userID.text)} tidak ditemukan",
            "Silahkan chek kembali password",
            backgroundColor: Colors.red, colorText: Colors.white);
      }
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    var akun = await FirebaseAuth.instance.signInWithCredential(credential);

    print(akun.user!.displayName);
    Get.snackbar(
        "berhasil login dengan akun", akun.user!.displayName.toString());

    return akun;

    // Once signed in, return the UserCredential
  }
}
