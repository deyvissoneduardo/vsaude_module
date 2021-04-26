import 'package:json_annotation/json_annotation.dart';

part 'register_user_model.g.dart';

@JsonSerializable()
class RegisterUserModel {
  String mobileProjectId;
  String tenantId;
  String fullName;
  String emailAddress;
  String password;
  String phone;

  RegisterUserModel(
    this.mobileProjectId,
    this.tenantId,
    this.fullName,
    this.emailAddress,
    this.password,
    this.phone,
  );

  factory RegisterUserModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterUserModelFromJson(json);
  Map<String, dynamic> toJson() => _$RegisterUserModelToJson(this);
}
