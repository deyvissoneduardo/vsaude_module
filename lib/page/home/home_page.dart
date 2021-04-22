import 'package:flutter/material.dart';
import 'package:vsaude_app/core/app_colors.dart';

/// criado: Deyvisson Eduardo -> 2021-03-11

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _layoutActual = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      // InitPage(), // tela inicio
      // CheersPage(), //tela saude
      // ArchivesPages(), // tela arquivos
      // ContactsPage(), // tela contatos
      // MaisPage() // tela maisMais
    ];

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _layoutActual,
        onTap: (index) {
          setState(() {
            _layoutActual = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        // cor da opcao clicada
        fixedColor: AppColors.corIconBlue,
        items: [
          BottomNavigationBarItem(
              label: 'Inicio', icon: Icon(Icons.home_outlined)),
          BottomNavigationBarItem(
              label: 'Saúde', icon: Icon(Icons.wb_incandescent)),
          BottomNavigationBarItem(label: 'Arquivos', icon: Icon(Icons.archive)),
          BottomNavigationBarItem(label: 'Contatos', icon: Icon(Icons.message)),
          BottomNavigationBarItem(label: 'Mais', icon: Icon(Icons.add)),
        ],
      ),
    );
  }
}
