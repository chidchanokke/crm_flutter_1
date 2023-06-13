import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:crm_flutter_1/app/data/api/base/result_data/result_data.dart';
import 'package:crm_flutter_1/app/data/model/test_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test/expect.dart';
import 'remote_failure.dart';
import 'request_api.dart';
import 'response_api.dart';

class RemoteApi {
  RemoteApi(
    this._dio,
  );
  final Dio _dio;

  static const _jsonDir = 'assets/json/';
  static const _jsonExtension = '.json';

  Future<ResultData<T>> call<T>(BaseRequest baseRequest) async {
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest:
          (RequestOptions options, RequestInterceptorHandler handler) async {
        print(options.data);

        final data = await rootBundle.load('${_jsonDir}${baseRequest.nameJson}$_jsonExtension');
        final map = json.decode(
          utf8.decode(
            data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes),
          ),
        );
        print(map); //fake data

        return handler.resolve(
          Response(requestOptions: options, data: map),
        );
        // return handler.next(map);
      },
      onResponse:
          (Response response, ResponseInterceptorHandler handler) async {
        print('error');
        print(response);
        // return handler.next(response);
        return handler.resolve(response);
      },
      onError: (DioException e, ErrorInterceptorHandler handler) {
        return handler.reject(e);
      },
    ));

    // final dioAdapter = DioAdapter(dio: _dio);
    // print(baseRequest.headers);
    // dioAdapter.onGet(
    //   baseRequest.path,
    //   (server) => server.reply(
    //     200,
    //    {"status":"success","result":{"id":2,"package_name":"POSee Lite","expire_date":"2023-12-05T07:00:00+07:00","remaining_amount":25,"billing_package":32,"stock_package":26,"customer_member":42,"total_package":35000},"error":null},
    //     delay: const Duration(seconds: 1),
    //   ),
    // );


    final response = await _dio.request(baseRequest.path,
        data: baseRequest.data,
        queryParameters: baseRequest.method.isGet ? baseRequest.data : null,
        options: Options(
            method: baseRequest.method.rawValue,
            headers: await baseRequest.headers),
        onSendProgress: baseRequest.onSendProgress,
        onReceiveProgress: baseRequest.onReceiveProgress);

    print('------------------------------------------------------------');
    print(response);

    final baseResponse =
        BaseResponse.fromJson(response.data, baseRequest.defaultDecoder);

    // expect(response.data, baseResponse.result);

    return ResultData<T>.success(baseResponse.result);
  }

  Future<Map<String, dynamic>> mockJson() async {
    final data = await rootBundle.load('${_jsonDir}test$_jsonExtension');
    final map = json.decode(
      utf8.decode(
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes),
      ),
    );
    print(map);
    return map;
  }
}
