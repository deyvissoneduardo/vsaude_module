import 'package:flutter_modular/flutter_modular.dart';
import 'package:vsaude_app/page/register_user/controller/register_user_controller.dart';
import 'package:vsaude_app/page/register_user/register_user_page.dart';

class RegisterUserModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => RegisterUserController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/register_user', child: (_, __) => RegisterUserPage())
  ];
}
