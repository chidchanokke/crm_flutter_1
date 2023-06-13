import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'base_failure.dart';
import '../remote_failure.dart';

part 'result_data.freezed.dart';

typedef FRData<T> = Future<ResultData<T>>;
typedef FVoid = Future<void>;

@freezed
class ResultData<T> with _$ResultData<T> {
  const ResultData._();
  const factory ResultData.success(T? data) = _SuccessData<T>;
  const factory ResultData.failure(Failure? failure) = _FailureData;

  bool isDataNotNull() {
    return when(
      success: (data) {
        return data != null;
      },
      failure: (failure) {
        return false;
      },
    );
  }

  T? getDataOrNull() {
    return when(
      success: (data) {
        return data;
      },
      failure: (failure) {
        return null;
      },
    );
  }

  Failure? getErrorOrNull() {
    return when(
      success: (data) {
        return null;
      },
      failure: (failure) {
        return failure;
      },
    );
  }

  TResult whenDataNotNull<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(Failure? ) failure,
  }) {
    return when(
      success: (data) {
        if (data != null) {
          return success(data);
        } else {
          return failure(RemoteFailure.noContent());
        }
      },
      failure: failure,
    );
  }
}
