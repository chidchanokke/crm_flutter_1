
import './result_data/base_failure.dart';
import 'error_api.dart';

class RemoteFailure extends Failure {
  RemoteFailure(RemoteError? error) : super(message: error?.system, error: error);
  RemoteFailure.noContent() : super(message: 'No Content', code: 1000204);
}
