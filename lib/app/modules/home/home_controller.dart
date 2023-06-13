import 'package:get/get.dart';
  import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  @override
  void onInit() async{
      final dio = Dio(BaseOptions());
  final dioAdapter = DioAdapter(dio: dio);

  const path = 'https://dev-bcrm-pos-api.azurewebsites.net/bcrm-pos/api/v1/package/datail';

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

  print(response.data); // {message: Success!}
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

  const path = 'https://dev-bcrm-pos-api.azurewebsites.net/bcrm-pos/api/v1/package/datail';

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

  print(response.data); // {message: Success!}
}
}
