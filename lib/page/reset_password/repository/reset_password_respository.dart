import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:vsaude_app/models/reset_password_model/reset_password_model.dart';
import 'package:vsaude_app/page/reset_password/services/resut_reset_password.dart';
part 'reset_password_respository.g.dart';

@RestApi(baseUrl: 'https://api.vsaude.com.br/api/services/app/User')
abstract class ResetPasswordRepository {
  factory ResetPasswordRepository(Dio dio, {String baseUrl}) =
      _ResetPasswordRepository;

  @POST('/StartResetPassword')
  Future<ResultResetPassword> resetPassword(
      @Body() ResetPasswordModel resetPasswordModel);
}
