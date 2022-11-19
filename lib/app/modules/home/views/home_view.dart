import 'package:flutter/material.dart';
import 'package:flutter_pil_smt5/app/utils/widgets/sidebar.dart';

import 'package:get/get.dart';

import '../../../utils/widgets/header.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 162, 205, 240),
        body: Row(
          children: [
            const Expanded(flex: 2, child: SideBar()),
            Expanded(
                flex: 17,
                child: Column(
                  children: [
                    const header(),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                      color: Colors.white,
                        borderRadius: BorderRadius.circular(50)
                      ),
                    ))
                  ],
                ))
          ],
        ));
  }
}

