import 'package:flutter_modular/flutter_modular.dart';
import 'package:vsaude_app/page/home/home_page.dart';

import 'home_store.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, __) => HomePage())
  ];
}
