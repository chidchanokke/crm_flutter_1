import 'package:get/get.dart';

import '../modules/dymanic_widget_2/dymanic_widget_2_binding.dart';
import '../modules/dymanic_widget_2/dymanic_widget_2_view.dart';
import '../modules/home/home_binding.dart';
import '../modules/home/home_view.dart';
import '../modules/test/test_binding.dart';
import '../modules/test/test_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.DYMANIC_WIDGET_2;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.TEST,
      page: () => const TestView(),
      binding: TestBinding(),
    ),
    GetPage(
      name: _Paths.DYMANIC_WIDGET_2,
      page: () => const DymanicWidget2View(),
      binding: DymanicWidget2Binding(),
    ),
  ];
}
