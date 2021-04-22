// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_reposotory.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _LoginRepository implements LoginRepository {
  _LoginRepository(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://hml.vsaude.com.br/api/TokenAuth/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<LoginModel> logerUser(loginModel) async {
    ArgumentError.checkNotNull(loginModel, 'loginModel');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(loginModel?.toJson() ?? <String, dynamic>{});
    final _result = await _dio.request<Map<String, dynamic>>(
        '/AuthenticateMobileUser',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = LoginModel.fromJson(_result.data);
    return value;
  }
}
