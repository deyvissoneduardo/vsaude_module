import 'package:flutter_modular/flutter_modular.dart';
import 'package:vsaude_app/page/login/login_page.dart';

import 'controller/login_controller.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LoginController),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/login', child: (_, __) => LoginPage())
  ];
}
