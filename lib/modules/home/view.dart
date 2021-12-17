import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todogetx/core/utils/extensions.dart';
import 'package:todogetx/modules/home/controller.dart';
import 'package:todogetx/modules/home/widgets/card_add_task.dart';
import 'package:todogetx/modules/home/widgets/card_task.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(4.0.wp),
              child: Text(
                'My List',
                style: TextStyle(
                  fontSize: 24.0.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Obx(
              () => GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                children: [
                  ...controller.tasks.map((element) => CardTask(task: element)),
                  CardAddTask()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
