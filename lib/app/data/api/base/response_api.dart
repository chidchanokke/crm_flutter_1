import 'error_api.dart';

class BaseResponse<T> {
  String? status;
  T? result;
  RemoteError? error;

  BaseResponse({
    this.status,
    this.result,
    this.error,
  });

  BaseResponse.fromJson(
      Map<String, dynamic> json, T Function(dynamic json) fromJsonT) {
    status = json['status'];
    result = json['result'] != null ? fromJsonT(json['result']) : null;
    error = json['error'] != null ? RemoteError.fromJson(json['error']) : null;
  }
}
