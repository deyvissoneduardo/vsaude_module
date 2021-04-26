// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterUserModel _$RegisterUserModelFromJson(Map<String, dynamic> json) {
  return RegisterUserModel(
    json['mobileProjectId'] as String,
    json['tenantId'] as String,
    json['fullName'] as String,
    json['emailAddress'] as String,
    json['password'] as String,
    json['phone'] as String,
  );
}

Map<String, dynamic> _$RegisterUserModelToJson(RegisterUserModel instance) =>
    <String, dynamic>{
      'mobileProjectId': instance.mobileProjectId,
      'tenantId': instance.tenantId,
      'fullName': instance.fullName,
      'emailAddress': instance.emailAddress,
      'password': instance.password,
      'phone': instance.phone,
    };
