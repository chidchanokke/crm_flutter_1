import 'package:crm_flutter_1/app/data/repository/test_repository.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../api/base/remote_api.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

class Repository {
  static initialize() {
    final dio =
        Dio(BaseOptions(baseUrl: 'https://dev-bcrm-pos-api.azurewebsites.net'));
    final remote = RemoteApi(dio);
    dio.interceptors.add(TalkerDioLogger(
      settings: const TalkerDioLoggerSettings(
        printRequestHeaders: true,
        printResponseHeaders: true,
      ),
    ));
    Get.put(TestRepository(
      remote,
    ));
  }
}
