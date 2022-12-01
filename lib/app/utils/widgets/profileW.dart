import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../style/AppColors.dart';

class ProfileW extends StatelessWidget {
  const ProfileW({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: !context.isPhone
          ? Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: ClipRRect(
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 150,
                      foregroundImage: NetworkImage(
                          'https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2021/03/Freepik2.jpg',
                          ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Alicia Jasmin',
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        'alicia@gmail.com',
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Center(
              child: Column(
                children: const [
                  SizedBox(
                    height: 40,
                  ),
                  ClipRRect(
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 150,
                      foregroundImage: NetworkImage(
                          'https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2021/03/Freepik2.jpg'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Alicia Jasmin',
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    'alicia@gmail.com',
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
