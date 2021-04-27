import 'package:flutter_modular/flutter_modular.dart';
import 'package:vsaude_app/page/home/home_page.dart';

import 'home_controller.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, __) => HomePage())
  ];
}
