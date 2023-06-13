import 'package:get/get.dart';

import 'dymanic_widget_2_controller.dart';

class DymanicWidget2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DymanicWidget2Controller>(
      () => DymanicWidget2Controller(),
    );
  }
}
