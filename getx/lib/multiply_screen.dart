import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/logic_controller.dart';

class MultiplyCount extends StatelessWidget {
  final MyLogicController _logicController = Get.put(MyLogicController());
  MultiplyCount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multiply Count'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Obx(
              () => Text('Counter: ${_logicController.count}'),
            ),
            Obx(
              () => Text('DoubleCounter: ${_logicController.doubleCount}'),
            ),
            Obx(() {
              return Text(
                  'MultiplyCounter : ${_logicController.multiplyCount}  ');
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _logicController.multiplyCounter();
        },
      ),
    );
  }
}
