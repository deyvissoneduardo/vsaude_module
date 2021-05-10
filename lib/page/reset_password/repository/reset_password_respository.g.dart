// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_respository.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ResetPasswordRepository implements ResetPasswordRepository {
  _ResetPasswordRepository(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://api.vsaude.com.br/api/services/app/User';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<ResultResetPassword> resetPassword(resetPasswordModel) async {
    ArgumentError.checkNotNull(resetPasswordModel, 'resetPasswordModel');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(resetPasswordModel?.toJson() ?? <String, dynamic>{});
    final _result = await _dio.request<Map<String, dynamic>>(
        '/StartResetPassword',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ResultResetPassword.fromJson(_result.data);
    return value;
  }
}
