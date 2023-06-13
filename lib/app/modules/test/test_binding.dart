import 'package:crm_flutter_1/app/data/repository/test_repository.dart';
import 'package:get/get.dart';

import 'test_controller.dart';

class TestBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<TestController>(
    //   () => TestController(),
    // );
     Get.put<TestController>(
      TestController(Get.find<TestRepository>(),),
      permanent: true
    );
  }
}
