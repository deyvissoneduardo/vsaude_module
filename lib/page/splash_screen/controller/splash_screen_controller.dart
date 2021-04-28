import 'package:mobx/mobx.dart';
part 'splash_screen_controller.g.dart';

class SplashScreenController = _SplashScreenControllerBase
    with _$SplashScreenController;

abstract class _SplashScreenControllerBase with Store {
  double width = 0.5;
  double height = 0.75;
}
