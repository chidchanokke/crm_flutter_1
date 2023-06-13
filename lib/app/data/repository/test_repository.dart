import '../api/base/remote_api.dart';
import '../api/base/result_data/result_data.dart';
import '../api/request/test/test_request.dart';
import '../model/test_model.dart';

mixin TestRepositoryInterface {
  Future<dynamic> callTest();
}

class TestRepository with TestRepositoryInterface {
  TestRepository(
    this._remote,
  );

  final RemoteApi _remote;

  @override
  Future<ResultData<TestModel>> callTest() async {
    final response = await _remote.call(TeatRequest());
    
    return response.whenDataNotNull(
        success: (data) {
          return ResultData.success(data);
        },
        failure: ResultData.failure);
  }
}
