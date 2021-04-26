// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_user_repository.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RegisterUserRepository implements RegisterUserRepository {
  _RegisterUserRepository(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://hml.vsaude.com.br/api/services/app/User/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<void> insertUser(registerUserModel) async {
    ArgumentError.checkNotNull(registerUserModel, 'registerUserModel');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(registerUserModel?.toJson() ?? <String, dynamic>{});
    await _dio.request<void>('/CreateMobileUser',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    return null;
  }
}
