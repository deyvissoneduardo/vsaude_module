import 'package:rxdart/rxdart.dart';
import 'package:vsaude_app/models/login_model/login_model.dart';
import 'package:vsaude_app/page/login/repository/login_reposotory.dart';

class LoginBloc {
  final LoginRepository repository;

  LoginBloc(this.repository) {
    statusOut = _status.stream;
    _statusIn = _status.sink;
  }

  //?Streams
  var _status = BehaviorSubject<bool>();
  Observable<bool> statusOut;
  Sink<bool> _statusIn;

  Future<void> singIn(String mobileProjectId, String userNameOrEmailAddress,
      String password) async {
    try {
      var response = await repository.logerUser(LoginModel(
        userNameOrEmailAddress,
        password,
        mobileProjectId,
      ));
      print('************* logado com sucesso *************');
      return response;
    } catch (err) {
      _status.addError(err);
      return err;
    }
  }

  void dispose() {
    _status.close();
    _statusIn.close();
  }
}
