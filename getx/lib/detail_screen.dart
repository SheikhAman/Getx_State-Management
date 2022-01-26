import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/logic_controller.dart';

class DetailScreen extends StatelessWidget {
  final MyLogicController _logicController = Get.put(MyLogicController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(
              () => Text('Counter ${_logicController.count}'),
            ),
            Obx(
              () => Text('Counter ${_logicController.doubleCount}'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Go Back to Home Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
