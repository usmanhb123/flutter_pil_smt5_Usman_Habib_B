//vidio 7-9
// import 'dart:html';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../utils/style/AppColors.dart';
import '../../../utils/widgets/MyFriends.dart';
import '../../../utils/widgets/MyTask.dart';
import '../../../utils/widgets/UpcomingTask.dart';
import '../../../utils/widgets/header.dart';
import '../../../utils/widgets/sideBar.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const SideBar(),
      backgroundColor: AppColors.primaryBg,
      body: SafeArea(
        child: Row(
          children: [
            !context.isPhone
                ? Expanded(
                    flex: 2,
                    child: const SideBar(),
                  )
                : const SizedBox(),
            Expanded(
              flex: 15,
              child: Column(children: [
                !context.isPhone
                    ? const header()
                    : Container(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                _drawerKey.currentState!.openDrawer();
                              },
                              icon: Icon(
                                Icons.menu,
                                color: AppColors.primaryText,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Task Management',
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: AppColors.primaryText),
                                ),
                                Text(
                                  'Manage Task Made Easy With Friends',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: AppColors.primaryText),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.notifications,
                              color: AppColors.primaryText,
                              size: 30,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: const CircleAvatar(
                                backgroundColor: Colors.amber,
                                radius: 25,
                                foregroundImage: NetworkImage(
                                    'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg'),
                              ),
                            )
                          ],
                        ),
                      ),
                //content / isi page /screen

                Expanded(
                    child: Container(
                  padding: !context.isPhone
                      ? const EdgeInsets.all(50)
                      : const EdgeInsets.all(20),
                  margin: !context.isPhone
                      ? const EdgeInsets.all(10)
                      : const EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: !context.isPhone
                        ? BorderRadius.circular(50)
                        : BorderRadius.circular(30),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Get.height * 0.4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'My Task',
                                style: TextStyle(
                                  color: AppColors.primaryText,
                                  fontSize: 30,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              // my task
                              MyTask(),
                            ],
                          ),
                        ),
                        !context.isPhone
                            ? Expanded(
                                child: Row(
                                  children: const [
                                    UpcomingTask(),
                                    MyFriends(),
                                  ],
                                ),
                              )
                            : const UpcomingTask(),
                      ]),
                ))
              ]),
            )
          ],
        ),
      ),
    );
  }
}
