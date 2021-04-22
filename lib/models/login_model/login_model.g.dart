// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) {
  return LoginModel(
    userNameOrEmailAddress: json['userNameOrEmailAddress'] as String,
    password: json['password'] as String,
    mobileProjectId: json['mobileProjectId'] as String,
  );
}

Map<String, dynamic> _$LoginModelToJson(LoginModel instance) =>
    <String, dynamic>{
      'userNameOrEmailAddress': instance.userNameOrEmailAddress,
      'password': instance.password,
      'mobileProjectId': instance.mobileProjectId,
    };
