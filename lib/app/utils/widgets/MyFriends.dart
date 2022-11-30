import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:ionicons/ionicons.dart';

import '../../routes/app_pages.dart';
import '../style/AppColors.dart';

class MyFriends extends StatelessWidget {
  const MyFriends({
    Key? key,
  }) : super(key: key);

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
              SizedBox(
                height: 400,
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: 8,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: context.isPhone ? 2 : 3,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: const Image(
                              image: NetworkImage(
                                  'https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2021/03/Freepik2.jpg'),
                            ),
                          ),
                          Text(
                            'Alicia Jasmin',
                            style: TextStyle(color: AppColors.primaryText),
                          )
                        ],
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
