import 'package:flutter_modular/flutter_modular.dart';
import 'package:vsaude_app/page/splash_screen/controller/splash_screen_controller.dart';
import 'package:vsaude_app/page/splash_screen/splash_screen_page.dart';

class SplashScreenModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SplashScreenController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, __) => SplashScreenPage())
  ];
}
