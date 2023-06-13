import 'dart:io';

import 'package:dio/dio.dart';
import 'package:uuid/uuid.dart';

typedef DefaultDecoder<T> = T Function(dynamic json);

abstract class BaseRequest<T> {
  String? get baseUrl;
  String get path;
  MethodRequest get method;
  Future<Map<String, dynamic>> get headers => _headers;
  dynamic get data;
  Future<FormData?> get formData async => null;
  bool get isAuthorization;
  DefaultDecoder get defaultDecoder;
  ProgressCallback? onSendProgress;
  ProgressCallback? onReceiveProgress;
  String? get nameJson;

  Future<Map<String, dynamic>> get _headers async {
    var headers = <String, String>{
      'content-type': 'application/json',
      'requestId': Uuid().v4(),
    };

    final form = await formData;
    if (form != null && method.isPost) {
      headers['content-type'] = 'multipart/form-data';
    }

    if (isAuthorization) {
      headers.addAll({
        HttpHeaders.authorizationHeader:
            'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJ0eXBlIjoiYnJhbmQiLCJ0b2tlbl9pZCI6IjljNTU0ZTdkLTdkNTItNDNlZC04ZDg0LWE1M2ZjMDVhMzk1MCIsImlzcyI6ImJjcm0iLCJzdWIiOiJJRF9la1Y0VDJOZDhIaUQiLCJicmFuZF9yZWYiOiJCTDZaTFc4UFhCWEEiLCJwcm92aWRlcl9yZWYiOiJQVlhmOXJzUm9pRWpRcCIsInNjb3BlIjoiYmNybS1iby1jdXN0IiwiZXhwIjoxNzA0NDY4NTY4LCJpYXQiOjE2NzI5MTQ3MDQsInBheWxvYWQiOnsieW91cl9wcm9wZXJ0eTEiOiJIYXJyeSIsInlvdXJfcHJvcGVydHkyIjoxfX0.u__4umkvEEWdEqutVK7jMN4BykeU1KGYDsDyDrJiTDSgQ0r7ySlxBdHoCBBn35uzOB0w5nSoW8URKO8dZ9KF9Q',
      });
    }

    return headers;
  }
}

enum MethodRequest { get, post }

extension MethodRequestName on MethodRequest {
  String get rawValue {
    switch (this) {
      case MethodRequest.post:
        return 'POST';
      default:
        return 'GET';
    }
  }

  bool get isGet {
    return this == MethodRequest.get;
  }

  bool get isPost {
    return this == MethodRequest.post;
  }
}
