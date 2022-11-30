import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../style/AppColors.dart';

class UpcomingTask extends StatelessWidget {
  const UpcomingTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Upcoming Task',
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 400,
                    child: ListView(
                      clipBehavior: Clip.antiAlias,
                      // scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: [
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: AppColors.cardBg,
                          ),
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(20),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.amber,
                                        radius: 20,
                                        foregroundImage: NetworkImage(
                                            'https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2021/03/Freepik2.jpg'),
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.amber,
                                        radius: 20,
                                        foregroundImage: NetworkImage(
                                            'https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2021/03/Freepik2.jpg'),
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
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: AppColors.cardBg,
                          ),
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(20),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.amber,
                                        radius: 20,
                                        foregroundImage: NetworkImage(
                                            'https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2021/03/Freepik2.jpg'),
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.amber,
                                        radius: 20,
                                        foregroundImage: NetworkImage(
                                            'https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2021/03/Freepik2.jpg'),
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
