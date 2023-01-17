import 'package:flutter/material.dart';
import 'package:flutter_pil_smt5/app/data/controllers/authController.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../../../utils/style/AppColors.dart';
import '../../../utils/widgets/MyFriends.dart';
import '../../../utils/widgets/PeopleYouMayKnow.dart';
import '../../../utils/widgets/header.dart';
import '../../../utils/widgets/sideBar.dart';
import '../controllers/friends_controller.dart';

class FriendsView extends GetView<FriendsController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  final authCon = Get.find<AuthController>();

  FriendsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const SafeArea(child: SizedBox(width: 150, child: SideBar())),
      backgroundColor: AppColors.primaryBg,
      body: SafeArea(
        child: Row(
          children: [
            !context.isPhone
                ? const Expanded(
                    flex: 2,
                    child: SideBar(),
                  )
                : const SizedBox(),
            Expanded(
              flex: 15,
              child: Column(children: [
                !context.isPhone
                    ? header()
                    : Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    _drawerKey.currentState!.openDrawer();
                                  },
                                  icon: Icon(
                                    Icons.menu,
                                    color: Color.fromARGB(255, 0, 0, 0),
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
                                          fontSize: 20,
                                          color: Color.fromARGB(255, 0, 0, 0)),
                                    ),
                                    Text(
                                      'Manage Task Made Easy With Friends',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color.fromARGB(255, 0, 0, 0)),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.notifications,
                                  color: Color.fromARGB(255, 2, 2, 2),
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
                            const SizedBox(
                              height: 10,
                            ),
                            context.isPhone
                            ? TextField(
                              onChanged: (value) => authCon.searchFriends(value),
                              controller: authCon.searchFriendController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding:
                                    const EdgeInsets.only(left: 40, right: 10),
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
                            ) : const SizedBox(),
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
                  child: Obx(() => authCon.hasilPencarian.isEmpty? 
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'People You May Know',
                          style: TextStyle(
                            fontSize: 30,
                            color: AppColors.primaryText,
                          ),
                        ),
                        PeopleYouMayKnow(),
                        MyFriends(),
                      ]): ListView.builder(
                        padding: EdgeInsets.all(8),
                        shrinkWrap: true,
                        itemCount: authCon.hasilPencarian.length,
                        itemBuilder: (context, index) => ListTile(
                          onTap: () => authCon.addFriends(authCon.hasilPencarian[index]['email']),
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image(image: NetworkImage(authCon.hasilPencarian[index]['photo'])),
                          ) ,
                          title: Text(authCon.hasilPencarian[index]['name']),
                          subtitle: Text(authCon.hasilPencarian[index]['email'].toString()),
                          trailing: Icon(FontAwesomeIcons.plus),
                        ) ,

                      ),
                )
                )
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}

