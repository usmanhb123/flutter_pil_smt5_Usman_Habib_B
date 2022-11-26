import 'package:flutter/material.dart';
import 'package:flutter_pil_smt5/app/utils/style/appColors.dart';
import 'package:flutter_pil_smt5/app/utils/widgets/sidebar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../../../utils/widgets/header.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final GlobalKey<ScaffoldState> _drawerkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _drawerkey,
        drawer: const SideBar(),
        backgroundColor: AppColors.primaryBg,
        body: Row(
          children: [
            !context.isPhone
                ? const Expanded(flex: 2, child: SideBar())
                : const SizedBox(),
            Expanded(
              flex: 17,
              child: Column(
                children: [
                  !context.isPhone
                      ? const header()
                      : Container(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    _drawerkey.currentState!.openDrawer();
                                  },
                                  icon: const Icon(FontAwesomeIcons.bars)),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Task Management",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromARGB(255, 65, 64, 64)),
                                  ),
                                  Text("Manage Task Made Easy With Friends",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color:
                                              Color.fromARGB(255, 65, 64, 64))),
                                ],
                              ),
                              const Spacer(),
                              const Icon(FontAwesomeIcons.bell),
                              const SizedBox(
                                width: 15,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.yellow,
                                  radius: 25,
                                  foregroundImage: NetworkImage(
                                      'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg'),
                                ),
                              ),
                            ],
                          ),
                        ),
                  Expanded(
                    child: Container(
                      padding: !context.isPhone
                          ? const EdgeInsets.all(30)
                          : const EdgeInsets.all(20),
                      margin: !context.isPhone
                          ? const EdgeInsets.all(10)
                          : const EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "My Task",
                            style: TextStyle(
                                color: AppColors.primaryText, fontSize: 30),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            height: 200,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              children: <Widget>[
                                Container(
                                  width: 400,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: AppColors.cardBg),
                                  margin: EdgeInsets.all(20),
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            child: const CircleAvatar(
                                              backgroundColor: Colors.yellow,
                                              radius: 20,
                                              foregroundImage: NetworkImage(
                                                  'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg'),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            child: const CircleAvatar(
                                              backgroundColor: Colors.yellow,
                                              radius: 20,
                                              foregroundImage: NetworkImage(
                                                  'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg'),
                                            ),
                                          ),
                                          const Spacer(),
                                          Container(
                                            height: 25,
                                            width: 80,
                                            color: AppColors.primaryBg,
                                            child: const Center(
                                              child: Text("100%"),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                      Container(
                                        height: 25,
                                        width: 80,
                                        color: AppColors.primaryBg,
                                        child: const Center(
                                          child: Text("10 / 10 task"),
                                        ),
                                      ),
                                      const Text(
                                        "Pemograman Mobile",
                                        style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontSize: 20,
                                        ),
                                      ),
                                      const Text(
                                        "Pemograman Mobile",
                                        style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontSize: 15,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 400,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: AppColors.cardBg),
                                  margin: EdgeInsets.all(20),
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            child: const CircleAvatar(
                                              backgroundColor: Colors.yellow,
                                              radius: 20,
                                              foregroundImage: NetworkImage(
                                                  'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg'),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            child: const CircleAvatar(
                                              backgroundColor: Colors.yellow,
                                              radius: 20,
                                              foregroundImage: NetworkImage(
                                                  'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg'),
                                            ),
                                          ),
                                          const Spacer(),
                                          Container(
                                            height: 25,
                                            width: 80,
                                            color: AppColors.primaryBg,
                                            child: const Center(
                                              child: Text("100%"),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                      Container(
                                        height: 25,
                                        width: 80,
                                        color: AppColors.primaryBg,
                                        child: const Center(
                                          child: Text("10 / 10 task"),
                                        ),
                                      ),
                                      const Text(
                                        "Pemograman Mobile",
                                        style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontSize: 20,
                                        ),
                                      ),
                                      const Text(
                                        "Pemograman Mobile",
                                        style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontSize: 15,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Up Comming Task",
                                      style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontSize: 30),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const Text(
                                          "My Friends",
                                          style: TextStyle(
                                              color: AppColors.primaryText,
                                              fontSize: 30),
                                        ),
                                        const Text(
                                          "More",
                                          style: TextStyle(
                                              color: AppColors.primaryText,
                                              fontSize: 30),
                                        ),
                                        FaIcon(
                                          FontAwesomeIcons.rightLong,
                                          color: AppColors.primaryText,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
