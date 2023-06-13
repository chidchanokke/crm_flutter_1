// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoteError _$RemoteErrorFromJson(Map<String, dynamic> json) => RemoteError(
      code: json['code'] as int?,
      httpStatus: json['httpStatus'] as int?,
      system: json['system'] as String?,
      title: json['title'] as String?,
      message: json['message'] as String?,
    )..validate = json['validate'] == null
        ? null
        : Validate.fromJson(json['validate'] as Map<String, dynamic>);

Map<String, dynamic> _$RemoteErrorToJson(RemoteError instance) =>
    <String, dynamic>{
      'code': instance.code,
      'httpStatus': instance.httpStatus,
      'system': instance.system,
      'title': instance.title,
      'message': instance.message,
      'validate': instance.validate,
    };

Validate _$ValidateFromJson(Map<String, dynamic> json) => Validate(
      fields: (json['fields'] as List<dynamic>?)
          ?.map((e) => Fields.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ValidateToJson(Validate instance) => <String, dynamic>{
      'fields': instance.fields,
    };

Fields _$FieldsFromJson(Map<String, dynamic> json) => Fields(
      key: json['key'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$FieldsToJson(Fields instance) => <String, dynamic>{
      'key': instance.key,
      'message': instance.message,
    };
