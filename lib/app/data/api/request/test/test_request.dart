import '../../../model/test_model.dart';
import '../../base/request_api.dart';

class TeatRequest extends BaseRequest {
  @override
  String? get baseUrl =>  'https://dev-bcrm-pos-api.azurewebsites.net';

  @override
  String get path => '/bcrm-pos/api/v1/package/datail';

  @override
  MethodRequest get method => MethodRequest.get;

  @override
  bool get isAuthorization => true;

  @override
  dynamic get data => toJson();

  @override
  String get nameJson => 'test';

  @override
  DefaultDecoder get defaultDecoder => _defaultDecoder;
  _defaultDecoder(dynamic json) {
    return TestModel.fromJson(json);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    return data;
  }
}