import 'package:flutter/material.dart';
import 'package:getx/logic_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final MyLogicController _logicController = Get.put(MyLogicController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('t'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(
              () => Text('Count ${_logicController.count}'),
            ),
            Obx(() {
              return Text('doubleCounter ${_logicController.doubleCount}');
            }),
            ElevatedButton(
              onPressed: () {},
              child: Text('Click Me'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _logicController.counter();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
