import 'package:flutter_modular/flutter_modular.dart';
import 'package:vsaude_app/page/home/controller/home_controller.dart';
import 'package:vsaude_app/page/home/home_module.dart';
import 'package:vsaude_app/page/login/controller/login_controller.dart';
import 'package:vsaude_app/page/login/login_module.dart';
import 'package:vsaude_app/page/splash_screen/controller/splash_screen_controller.dart';
import 'package:vsaude_app/page/splash_screen/splash_screen_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashScreenController()),
        Bind((i) => HomeController()),
        Bind((i) => LoginController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: SplashScreenModule()),
        ModuleRoute('/login', module: LoginModule()),
        ModuleRoute('/home', module: HomeModule()),
      ];

  // @override
  // Widget get bootstrap => AppWidget();

  // static Inject get to => Inject<AppModule>.of();
}
