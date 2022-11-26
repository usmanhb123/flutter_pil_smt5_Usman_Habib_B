
import 'package:flutter/material.dart';
import 'package:flutter_pil_smt5/app/routes/app_pages.dart';
import 'package:flutter_pil_smt5/app/utils/style/appColors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';



class SideBar extends StatelessWidget {
  const SideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 1,
      child: Container(
        height: Get.height,
        color: AppColors.primaryBg,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 100,
                padding: const EdgeInsets.only(top: 10),
                width: double.infinity,
                alignment: Alignment.topCenter,
                child: const Image(
                  image: AssetImage('assets/icons/icon.png'),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 80,
                child: Center(
                  child: InkWell(
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 100,
                          decoration: Get.currentRoute == "/home"
                              // ignore: prefer_const_constructors
                              ? BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(40),
                                  color: Colors.white)
                              : const BoxDecoration(),
                          child: Get.currentRoute == "/home"
                              ? const Icon(
                                  FontAwesomeIcons.desktop,
                                  color: AppColors.primaryText,
                                )
                              : const Icon(
                                  FontAwesomeIcons.desktop,
                                  color:
                                      Color.fromARGB(255, 20, 20, 20),
                                ),
                        ),
                        const Text(
                          "Home",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            color: Color.fromARGB(255, 20, 20, 20),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    onTap: () => Get.toNamed(Routes.HOME),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
                child: Center(
                  child: InkWell(
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 100,
                          decoration: Get.currentRoute == "/profile"
                              ? BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(40),
                                  color: Colors.white)
                              : const BoxDecoration(),
                          child: Get.currentRoute == "/profile"
                              ? const Icon(
                                  FontAwesomeIcons.user,
                                  color: AppColors.primaryText,
                                )
                              : const Icon(
                                  FontAwesomeIcons.user,
                                  color:
                                      Color.fromARGB(255, 20, 20, 20),
                                ),
                        ),
                        const Text(
                          "Profile",
                          style: TextStyle(
                              color: Color.fromARGB(255, 20, 20, 20),
                              fontSize: 16),
                        ),
                      ],
                    ),
                    onTap: () => Get.toNamed(Routes.PROFILE),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
                child: Center(
                  child: InkWell(
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 100,
                          decoration: Get.currentRoute == "/friends"
                              ? BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(40),
                                  color: Colors.white)
                              : const BoxDecoration(),
                          child: Get.currentRoute == "/friends"
                              ? const Icon(
                                  FontAwesomeIcons.heart,
                                  color: AppColors.primaryText,
                                )
                              : const Icon(
                                  FontAwesomeIcons.heart,
                                  color:
                                      Color.fromARGB(255, 20, 20, 20),
                                ),
                        ),
                        const Text(
                          "Friends",
                          style: TextStyle(
                              color: Color.fromARGB(255, 20, 20, 20),
                              fontSize: 16),
                        ),
                      ],
                    ),
                    onTap: () => Get.toNamed(Routes.FRIENDS),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
                child: Center(
                  child: InkWell(
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 100,
                          decoration: Get.currentRoute == "/task"
                              ? BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(40),
                                  color: Colors.white)
                              : const BoxDecoration(),
                          child: Get.currentRoute == "/task"
                              ? const Icon(
                                  FontAwesomeIcons.cube,
                                  color: AppColors.primaryText,
                                )
                              : const Icon(
                                  FontAwesomeIcons.cube,
                                  color:
                                      Color.fromARGB(255, 20, 20, 20),
                                ),
                        ),
                        const Text(
                          "Task",
                          style: TextStyle(
                              color: Color.fromARGB(255, 20, 20, 20),
                              fontSize: 16),
                        ),
                      ],
                    ),
                    onTap: () => Get.toNamed(Routes.TASK),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
