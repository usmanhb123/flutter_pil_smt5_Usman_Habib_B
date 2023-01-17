// import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/controllers/authController.dart';
import '../../routes/app_pages.dart';
import '../style/AppColors.dart';

class MyFriends extends StatelessWidget {
  final authCon = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'My Friend',
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 25,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () => Get.toNamed(Routes.FRIENDS),
                    child: Text(
                      'more',
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: AppColors.primaryText,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
                  stream: authCon.streamFriends(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    var myFriends = (snapshot.data!.data()
                        as Map<String, dynamic>)['emailFriends'] as List;

                    return GridView.builder(
                        shrinkWrap: true,
                        itemCount: myFriends.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: context.isPhone ? 2 : 3,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                        itemBuilder: (context, index) {
                          return StreamBuilder<
                                  DocumentSnapshot<Map<String, dynamic>>>(
                              stream: authCon.streamUsers(myFriends[index]),
                              builder: (context, snapshot2) {
                                if (snapshot2.connectionState ==
                                    ConnectionState.waiting) {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }

                                 var data = snapshot2.data!.data();
                                return Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image(
                                        image: NetworkImage(
                                            data!['photo']),
                                            ),
                                    ),
                                    Text(
                                     data['name'],
                                      style: TextStyle(
                                          color: AppColors.primaryText),
                                    )
                                  ],
                                );
                              });
                        });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
