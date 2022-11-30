import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/style/AppColors.dart';
import '../../../utils/widgets/MyTask.dart';
import '../../../utils/widgets/header.dart';
import '../../../utils/widgets/profileW.dart';
import '../../../utils/widgets/sideBar.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const SideBar(),
      backgroundColor: AppColors.primaryBg,
      body: Row(
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
                                    fontSize: 30, color: AppColors.primaryText),
                              ),
                              Text(
                                'Manage Task Made Easy With Friends',
                                style: TextStyle(
                                    fontSize: 16, color: AppColors.primaryText),
                              ),
                            ],
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              Get.defaultDialog(
                                title: 'Sign Out',
                                content: const Text(
                                    'Are You Sure Want to Sign Out?'),
                                cancel: ElevatedButton(
                                  onPressed: () => Get.back(),
                                  child: const Text('Cancel'),
                                ),
                                confirm: ElevatedButton(
                                  onPressed: () => Get.toNamed(Routes.LOGIN),
                                  child: const Text('Sign Out'),
                                ),
                              );
                            },
                            child: Row(
                              children: const [
                                Text(
                                  'Sign Out',
                                  style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Ionicons.log_out_outline,
                                  color: AppColors.primaryText,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      ProfileW(),
                      Text(
                        'My Task',
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 200,
                        child: MyTask(),
                      ),
                    ]),
              ))
            ]),
          )
        ],
      ),
    );
  }
}
