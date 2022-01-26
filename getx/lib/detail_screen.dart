import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/logic_controller.dart';
import 'package:getx/multiply_screen.dart';

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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Obx(
              () => Text('Counter ${_logicController.count}'),
            ),
            Obx(
              () => Text('Counter ${_logicController.doubleCount}'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(MultiplyCount());
              },
              child: Text('Go Back to Multiply Count'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _logicController.doubleCounter();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
