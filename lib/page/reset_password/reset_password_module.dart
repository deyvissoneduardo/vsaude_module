import 'package:flutter_modular/flutter_modular.dart';
import 'package:vsaude_app/page/reset_password/reset_password_page.dart';

class ResetPasswordModule extends Module {
  List<Bind> binds = [Bind.lazySingleton((i) => ResetPasswordPage())];

  List<ModularRoute> routes = [
    ChildRoute('/reset_password', child: (_, __) => ResetPasswordPage())
  ];
}
