import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/style/AppColors.dart';
import '../../../utils/widgets/MyFriends.dart';
import '../../../utils/widgets/header.dart';
import '../../../utils/widgets/sideBar.dart';
import '../controllers/friends_controller.dart';

class FriendsView extends GetView<FriendsController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

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
                            child: Row(
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
                        Text(
                          'People You May Know',
                          style: TextStyle(
                            fontSize: 30,
                            color: AppColors.primaryText,
                          ),
                        ),
                        SizedBox(
                          height: 200,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            clipBehavior: Clip.antiAlias,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: const Image(
                                        image: NetworkImage(
                                            'https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2021/03/Freepik2.jpg'),
                                      ),
                                    ),
                                    const Positioned(
                                      bottom: 10,
                                      left: 50,
                                      child: Text(
                                        'Alicia Jasmin',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: SizedBox(
                                        height: 36,
                                        width: 36,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.zero,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                          ),
                                          child: Icon(Icons.add_circle_outline),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        MyFriends(),
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
