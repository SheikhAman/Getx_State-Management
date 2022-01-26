import 'package:get/get.dart';

class MyLogicController extends GetxController {
  RxInt count = 0.obs;
  RxInt doubleCount = 2.obs;

  void counter() {
    count++;
  }

  void doubleCounter() {
    doubleCount += 2;
  }
}
