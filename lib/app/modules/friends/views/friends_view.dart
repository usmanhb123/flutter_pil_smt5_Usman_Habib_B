import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../../../utils/style/AppColors.dart';
import '../../../utils/widgets/header.dart';
import '../../../utils/widgets/sideBar.dart';
import '../controllers/friends_controller.dart';

class FriendsView extends GetView<FriendsController>  {
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
                              const SizedBox(width: 15,),
                              ClipRRect(borderRadius: BorderRadius.circular(30),
                              child: 
                              const CircleAvatar(backgroundColor: Colors.yellow, radius: 25, foregroundImage: NetworkImage('https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg'),)
                              ,),
                            ],
                          ),
                        ),
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.all(20),
                    margin: !context.isPhone
                        ? const EdgeInsets.all(10)
                        : const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                  ))
                ],
              ),
            )
          ],
        ));
  }
}
