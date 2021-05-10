// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResetPasswordModel _$ResetPasswordModelFromJson(Map<String, dynamic> json) {
  return ResetPasswordModel(
    email: json['email'] as String,
    mobileProjectId: json['mobileProjectId'] as String,
  );
}

Map<String, dynamic> _$ResetPasswordModelToJson(ResetPasswordModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'mobileProjectId': instance.mobileProjectId,
    };
