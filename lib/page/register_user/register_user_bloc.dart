import 'package:rxdart/rxdart.dart';
import 'package:vsaude_app/models/register_user_model/register_user_model.dart';
import 'package:vsaude_app/page/register_user/repository/register_user_repository.dart';

class RegisterUserBloc {
  final RegisterUserRepository repository;

  RegisterUserBloc(
    this.repository,
  ) {
    statusOut = _status.stream;
    _statusIn = _status.sink;
  }

  //?Streams
  var _status = BehaviorSubject<bool>();
  Observable<bool> statusOut;
  Sink<bool> _statusIn;

  Future<void> insertUser(
    String mobileProjectId,
    String tenantId,
    String fullName,
    String emailAddress,
    String phone,
    String password,
  ) async {
    try {
      var response = await repository.insertUser(RegisterUserModel(
        mobileProjectId,
        tenantId,
        fullName,
        emailAddress,
        password,
        phone,
      ));
      return response;
    } catch (err) {
      _status.addError(err);
    }
  }

  void dispose() {
    _status.close();
    _statusIn.close();
  }
}
