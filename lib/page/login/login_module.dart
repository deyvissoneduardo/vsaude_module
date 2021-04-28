import 'package:flutter_modular/flutter_modular.dart';
import 'package:vsaude_app/page/login/login_page.dart';
import 'package:vsaude_app/page/register_user/controller/register_user_controller.dart';
import 'package:vsaude_app/page/register_user/register_user_page.dart';

import 'controller/login_controller.dart';

class LoginModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton((i) => LoginController),
        Bind.lazySingleton((i) => RegisterUserController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/login', child: (_, __) => LoginPage()),
        ChildRoute('/register_user', child: (_, __) => RegisterUserPage()),
      ];
}
