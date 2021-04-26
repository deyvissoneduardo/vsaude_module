import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:vsaude_app/models/register_user_model/register_user_model.dart';

part 'register_user_repository.g.dart';

@RestApi(baseUrl: 'https://hml.vsaude.com.br/api/services/app/User/')
abstract class RegisterUserRepository {
  factory RegisterUserRepository(Dio dio, {String baseUrl}) =
      _RegisterUserRepository;

  @POST('/CreateMobileUser')
  Future<void> insertUser(@Body() RegisterUserModel registerUserModel);
}
