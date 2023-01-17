import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/controllers/authController.dart';

class PeopleYouMayKnow extends StatelessWidget {
 final authCon = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                    'Surti',
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
    );
  }
}
