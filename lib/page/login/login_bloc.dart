import 'package:rxdart/rxdart.dart';
import 'package:vsaude_app/models/login_model/login_model.dart';
import 'package:vsaude_app/page/login/login_model_page.dart';
import 'package:vsaude_app/page/login/repository/login_reposotory.dart';

class LoginBloc {
  final LoginRepository repository;
  final LoginModelPage loginModelPage;

  LoginBloc(this.repository, this.loginModelPage) {
    statusOut = _status.stream;
    _statusIn = _status.sink;
  }

  //?Streams
  var _status = BehaviorSubject<bool>();
  Observable<bool> statusOut;
  Sink<bool> _statusIn;

  Future<void> singIn(
      String email, String password, String mobileProjectId) async {
    try {
      var response = await repository.logerUser(LoginModel(
          userNameOrEmailAddress: email,
          password: password,
          mobileProjectId: mobileProjectId));
      //_statusIn.add(response);
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
