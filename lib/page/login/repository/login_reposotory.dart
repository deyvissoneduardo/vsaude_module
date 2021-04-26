import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:vsaude_app/models/login_model/login_model.dart';

part 'login_reposotory.g.dart';

@RestApi(baseUrl: 'https://hml.vsaude.com.br/api/TokenAuth/')
abstract class LoginRepository {
  factory LoginRepository(Dio dio, {String baseUrl}) = _LoginRepository;

  @POST('/AuthenticateMobileUser')
  Future<LoginModel> logerUser(@Body() LoginModel loginModel);
}
