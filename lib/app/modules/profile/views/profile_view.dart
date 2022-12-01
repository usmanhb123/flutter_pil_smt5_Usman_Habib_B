import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import '../../../data/controllers/authController.dart';
import '../../../routes/app_pages.dart';
import '../../../utils/style/AppColors.dart';
import '../../../utils/widgets/MyTask.dart';
import '../../../utils/widgets/header.dart';
import '../../../utils/widgets/profileW.dart';
import '../../../utils/widgets/sideBar.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  final authC = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: SafeArea(child: SizedBox(width: 150, child: const SideBar())),
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
                    ? header()
                    : headerPhone(
                        drawerKey: _drawerKey,
                        authC: authC), //content / isi page /screen
//content / isi page /screen

                Expanded(
                    child: Container(
                  padding: !context.isPhone
                      ? const EdgeInsets.all(50)
                      : const EdgeInsets.all(9),
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
      ),
    );
  }
}

class headerPhone extends StatelessWidget {
  const headerPhone({
    Key? key,
    required GlobalKey<ScaffoldState> drawerKey,
    required this.authC,
  })  : _drawerKey = drawerKey,
        super(key: key);

  final GlobalKey<ScaffoldState> _drawerKey;
  final AuthController authC;

  @override
  Widget build(BuildContext context) {
    return Container(
      // content / isi page / screen

      padding: EdgeInsets.all(20),
      child: Row(children: [
        IconButton(
          onPressed: () {
            _drawerKey.currentState!.openDrawer();
          },
          icon: Icon(
            Icons.menu,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        const Spacer(),
        Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Task Management',
              style:
                  TextStyle(fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
            ),
            Text(
              'Manage Task Made Easy With Friends',
              style:
                  TextStyle(fontSize: 10, color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ],
        ),
       Spacer(),
        GestureDetector(
          onTap: () {
            Get.defaultDialog(
              title: 'Sign Out ',
              content: const Text('Are you sure want to sign out ?'),
              cancel: ElevatedButton(
                onPressed: () => Get.back(),
                child: const Text('Cancel'),
              ),
              confirm: ElevatedButton(
                onPressed: () => authC.logOut(),
                child: const Text('Sign Out'),
              ),
            );
          },
          child: Row(
            children: const [
              Text(
                'Sign Out',
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 15),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                FontAwesomeIcons.rightFromBracket,
                color: Color.fromARGB(255, 2, 2, 2),
                size: 15,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
