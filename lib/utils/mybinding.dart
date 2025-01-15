
import 'package:get/get.dart';

import '../controllers/controller_counter.dart';

class MyBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.lazyPut(()=>ControllerCounter() , fenix: true);
    // Get.put(ControllerCounter() , permanent: true);
  }

}