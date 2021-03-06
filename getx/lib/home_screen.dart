import 'package:flutter/material.dart';
import 'package:getx/detail_screen.dart';
import 'package:getx/logic_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final MyLogicController _logicController = Get.put(MyLogicController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
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
                Get.to(DetailScreen());
              },
              child: Text('goto DetailScreen'),
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
