import 'package:json_annotation/json_annotation.dart';
part 'error_api.g.dart';

@JsonSerializable()
class RemoteError {
  RemoteError({
    this.code,
    this.httpStatus,
    this.system,
    this.title,
    this.message,
  });

  int? code;
  int? httpStatus;
  String? system;
  String? title;
  String? message;
  Validate? validate;

  factory RemoteError.fromJson(Map<String, dynamic> json) =>
      _$RemoteErrorFromJson(json);
}


@JsonSerializable()
class Validate {
  Validate({
    this.fields,
  });

  final List<Fields>? fields;

  factory Validate.fromJson(Map<String, dynamic> json) =>
      _$ValidateFromJson(json);
}

@JsonSerializable()
class Fields {
  Fields({
    this.key,
    this.message,
  });

  String? key;
  String? message;

  factory Fields.fromJson(Map<String, dynamic> json) => _$FieldsFromJson(json);
}