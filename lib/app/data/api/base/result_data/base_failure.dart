import '../error_api.dart';

abstract class Failure implements Exception {
  Failure({
    this.code,
    this.message,
    this.error,
  });

  final int? code;
  final String? message;
  final RemoteError? error;
}
