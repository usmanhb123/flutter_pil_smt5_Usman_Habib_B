import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../data/controllers/authController.dart';
import '../../routes/app_pages.dart';

// ignore: camel_case_types
class header extends StatelessWidget {
  
  final authC = Get.find<AuthController>();
  header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.1,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 40, right: 40, top: 22),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Task Management",
                  style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 65, 64, 64)),
                ),
                Text("Manage Task Made Easy With Friends",
                    style: TextStyle(
                        fontSize: 12,
                        color:
                            Color.fromARGB(255, 65, 64, 64))),
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 1,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.only(
                      left: 40, right: 10),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Colors.blue)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Colors.blue)),
                  prefixIcon: const Padding(
                    padding:
                        EdgeInsetsDirectional.only(start: 10.0),
                    child: Icon(
                      FontAwesomeIcons.magnifyingGlass,
                      color: Colors.black,
                    ),
                  ),
                  hintText: "Search",
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            const Icon(FontAwesomeIcons.bell),
            const SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                Get.defaultDialog(
                    title: "Sign Out",
                    content: const Text(
                        "Are sure want to sign out?"),
                    cancel: ElevatedButton(
                        onPressed: () => Get.back(),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(
                                  Colors.red),
                        ),
                        child: const Text("Cancel")),
                    confirm: ElevatedButton(
                        onPressed: () =>
                            authC.logout(),
                        child: const Text("Sign Out")));
              },
              child: Row(
                children: const [
                  Text(
                    "Sign Out",
                    style: TextStyle(
                        color: Color.fromARGB(255, 65, 64, 64)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(FontAwesomeIcons.rightFromBracket,
                      size: 15,
                      color: Color.fromARGB(255, 65, 64, 64)),
                ],
              ),
            ),
            const SizedBox(
              width: 5,
            ),
          ],
        ),
      ),
    );
  }
}
