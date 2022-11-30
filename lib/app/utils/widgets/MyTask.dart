import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import '../style/AppColors.dart';

class MyTask extends StatelessWidget {
  const MyTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        clipBehavior: Clip.antiAlias,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
        Container(
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: AppColors.cardBg,
            ),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: const CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 20,
                      foregroundImage: NetworkImage(
                          'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg'),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: const CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 20,
                      foregroundImage: NetworkImage(
                          'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg'),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 25,
                    width: 80,
                    color: AppColors.primaryBg,
                    child: Center(
                        child: Text(
                      '100%',
                      style: TextStyle(
                        color: AppColors.primaryText,
                      ),
                    )),
                  ),
                ],
              ),
              Spacer(),
              Container(
                height: 25,
                width: 80,
                color: AppColors.primaryBg,
                child: Center(
                    child: Text(
                  '10 / 10 Task',
                  style: TextStyle(
                    color: AppColors.primaryText,
                  ),
                )),
              ),
              const Text(
                'Pemrograman Mobile',
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 20,
                ),
              ),
              const Text(
                'Deadline 2 Hari Lagi',
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 15,
                ),
              ),
            ]),
          ),
          Container(
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: AppColors.cardBg,
            ),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: const CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 20,
                      foregroundImage: NetworkImage(
                          'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg'),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: const CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 20,
                      foregroundImage: NetworkImage(
                          'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg'),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 25,
                    width: 80,
                    color: AppColors.primaryBg,
                    child: Center(
                        child: Text(
                      '100%',
                      style: TextStyle(
                        color: AppColors.primaryText,
                      ),
                    )),
                  ),
                ],
              ),
              Spacer(),
              Container(
                height: 25,
                width: 80,
                color: AppColors.primaryBg,
                child: Center(
                    child: Text(
                  '10 / 10 Task',
                  style: TextStyle(
                    color: AppColors.primaryText,
                  ),
                )),
              ),
              const Text(
                'Pemrograman Mobile',
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 20,
                ),
              ),
              const Text(
                'Deadline 2 Hari Lagi',
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 15,
                ),
              ),
            ]),
          ),
          Container(
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: AppColors.cardBg,
            ),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: const CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 20,
                      foregroundImage: NetworkImage(
                          'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg'),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: const CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 20,
                      foregroundImage: NetworkImage(
                          'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg'),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 25,
                    width: 80,
                    color: AppColors.primaryBg,
                    child: Center(
                        child: Text(
                      '100%',
                      style: TextStyle(
                        color: AppColors.primaryText,
                      ),
                    )),
                  ),
                ],
              ),
              Spacer(),
              Container(
                height: 25,
                width: 80,
                color: AppColors.primaryBg,
                child: Center(
                    child: Text(
                  '10 / 10 Task',
                  style: TextStyle(
                    color: AppColors.primaryText,
                  ),
                )),
              ),
              const Text(
                'Pemrograman Mobile',
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 20,
                ),
              ),
              const Text(
                'Deadline 2 Hari Lagi',
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 15,
                ),
              ),
            ]),
          ),
          ],
      ),
    );
  }
}
