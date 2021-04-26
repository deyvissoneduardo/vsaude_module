import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vsaude_app/models/register_user_model/register_user_model.dart';

part 'register_user_api.g.dart';

@RestApi(baseUrl: 'https://hml.vsaude.com.br/api/services/app/User/')
abstract class RegisterUserApi {
  factory RegisterUserApi(Dio dio, {String baseUrl}) = _RegisterUserApi;

  @POST('/CreateMobileUser')
  Future<void> insertUser(@Body() RegisterUserModel registerUserModel);
}
