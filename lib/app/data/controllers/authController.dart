import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../routes/app_pages.dart';

class AuthController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  UserCredential? _userCredential;
  Future<void> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    await FirebaseAuth.instance
        .signInWithCredential(credential)
        .then((value) => _userCredential = value);

    // firebase firestore
    CollectionReference users = firestore.collection('users');

    final cekUser = await users.doc(googleUser!.email).get();
    if (cekUser.exists) {
      users.doc(googleUser.email).set({
        'uid': _userCredential!.user!.uid,
        'name': googleUser.displayName,
        'photo': googleUser.photoUrl,
        'createdAt': _userCredential!.user!.metadata.creationTime.toString(),
        'lastLoginAt':
            _userCredential!.user!.metadata.lastSignInTime.toString(),
      });
    } else {
      users.doc(googleUser.email).set({
        'lastLoginAt':
            _userCredential!.user!.metadata.lastSignInTime.toString(),
      });
      Get.offAllNamed(Routes.HOME);
    }
  }

  Future<void> logOut() async {
    await FirebaseAuth.instance.signOut();
    await GoogleSignIn().signOut();
    Get.offAllNamed(Routes.LOGIN);
  }
}
