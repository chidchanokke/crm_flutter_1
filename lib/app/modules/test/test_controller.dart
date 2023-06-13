import 'package:crm_flutter_1/app/data/repository/test_repository.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

class TestController extends GetxController {
   TestController(this._testRepository);

  final count = 0.obs;
  late final TestRepository _testRepository;

  @override
  void onInit() {
    main();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  void main() async {
    final dio = Dio(BaseOptions());
    final dioAdapter = DioAdapter(dio: dio);

    // const path =
    //     'https://dev-bcrm-pos-api.azurewebsites.net/bcrm-pos/api/v1/package/datail';
    const path = 'https://jsonplaceholder.typicode.com/todos/1';

    dioAdapter.onGet(
      path,
      (server) => server.reply(
        200,
        {'message': 'Success!'},
        // Reply would wait for one-sec before returning data.
        delay: const Duration(seconds: 1),
      ),
    );

    final response = await dio.get(path);
    _initial();
    print('object');
    print(response.data); // {message: Success!}
  }

   _initial() async {
    final dataHome = await _testRepository.callTest();
    print(dataHome);
  }
}

