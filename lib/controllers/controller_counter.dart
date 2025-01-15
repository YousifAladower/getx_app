import 'package:get/get.dart';

class ControllerCounter extends GetxController {

 int counter=0;

 void increment()
 {
  counter++;
  update();
 }
 void decrement()
 {
  counter--;
  update();
 }

@override
  void onInit() {
    // TODO: implement onInit
    print("onInit()");
    super.onInit();
  }
@override
  void onReady() {
    // TODO: implement onReady
    print("onReady");
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    print("onClose");
    super.onClose();
  }
}