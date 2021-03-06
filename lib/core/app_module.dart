import 'package:flutter_modular/flutter_modular.dart';
import 'package:vsaude_app/page/home/controller/home_controller.dart';
import 'package:vsaude_app/page/home/home_module.dart';
import 'package:vsaude_app/page/login/controller/login_controller.dart';
import 'package:vsaude_app/page/login/login_module.dart';
import 'package:vsaude_app/page/register_user/controller/register_user_controller.dart';
import 'package:vsaude_app/page/register_user/register_user_module.dart';
import 'package:vsaude_app/page/reset_password/controller/reset_password_controller.dart';
import 'package:vsaude_app/page/reset_password/reset_password_module.dart';
import 'package:vsaude_app/page/splash_screen/controller/splash_screen_controller.dart';
import 'package:vsaude_app/page/splash_screen/splash_screen_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashScreenController()),
        Bind((i) => HomeController()),
        Bind((i) => LoginController()),
        Bind((i) => RegisterUserController()),
        Bind((i) => ResetPasswordController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: SplashScreenModule()),
        ModuleRoute('/home', module: HomeModule()),
        ModuleRoute('/login', module: LoginModule()),
        ModuleRoute('/register_user', module: RegisterUserModule()),
        ModuleRoute('/reset_password', module: ResetPasswordModule()),
      ];

  // @override
  // Widget get bootstrap => AppWidget();

  // static Inject get to => Inject<AppModule>.of();
}
