import 'package:flutter/material.dart';
import 'package:flutter_pil_smt5/app/data/controllers/authController.dart';
import 'package:flutter_pil_smt5/app/routes/app_pages.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final authC = Get.find<AuthController>();

   LoginView({super.key});
  // const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 162, 205, 240),
      body: Container(
        margin: EdgeInsets.all(Get.height * 0.045),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Row(
          children: [
            !context.isPhone
                ? Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                          color: Color.fromARGB(255, 40, 145, 236)),
                      // ignore: prefer_const_literals_to_create_immutables
                      child: Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Text("Welcome",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 70,
                                  )),
                              // ignore: prefer_const_constructors
                              Text("Please Sign In",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  )),
                              const Text("Start Jurney with us",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  )),
                            ]),
                      ),
                    ),
                  )
                : const SizedBox(),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                child: Column(children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 80.5),
                  ),
                  context.isPhone
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                              const Text("Welcome",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 76, 87, 84),
                                    fontSize: 30,
                                  )),
                              // ignore: prefer_const_constructors
                              Text("Please Sign In",
                                  style: const TextStyle(
                                    color:
                                        Color.fromARGB(255, 76, 87, 84),
                                    fontSize: 15,
                                  )),
                              const Text("Start Jurney with us",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 76, 87, 84),
                                    fontSize: 15,
                                  )),
                            ])
                      : const SizedBox(),
                  context.isPhone
                      ? const Padding(
                          padding: EdgeInsets.only(bottom: 30.5),
                        )
                      : const SizedBox(),
                  !context.isPhone
                      ? Image.asset(
                          'assets/images/login.gif',
                          height: Get.height * 0.5,
                        )
                      : Image.asset(
                          'assets/images/login.gif',
                          height: Get.height * 0.35,
                        ),
                  !context.isPhone
                      ? const Padding(
                          padding: EdgeInsets.only(bottom: 50.5),
                        )
                      : const Padding(
                          padding: EdgeInsets.only(bottom: 30.5),
                        ),
                  FloatingActionButton.extended(
                    onPressed: () => authC.signInWithGoogle(),
                    label: const Text("Sign In With Google"),
                    icon: const Icon(
                      FontAwesomeIcons.google,
                      size: 25,
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
