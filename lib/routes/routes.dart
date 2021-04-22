import 'package:flutter/material.dart';
import 'package:vsaude_app/page/home/home_page.dart';

/// criado: Deyisson Eduardo -> 2021-03-11 **/

class Routes {
  /// constantes para gera rotas **/
  static const String PAGE_HOME = '/';

  static Route<dynamic> genareteRouter(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case PAGE_HOME:
        return MaterialPageRoute(builder: (_) => HomePage());
      default:
        _erroRouter();
    }
  }

  /// metodo de rota padrao de erro
  /// caso a rota nao exista ou nao foi criada
  /// **/
  static Route<dynamic> _erroRouter() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: Text('Tela nao encontrada, verifique no arquivo Routes.dart'),
        ),
      );
    });
  }
}
