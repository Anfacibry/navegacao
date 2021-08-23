import "package:flutter/material.dart";
import 'package:navegacao/utils/rotas_nomeadas.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget _createItem(IconData icon, String label, void Function() fun) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: TextStyle(
          fontFamily: "RobotoCondensed",
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: fun,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Theme.of(context).accentColor,
            child: Text("Vamos cozinhar"),
            alignment: AlignmentDirectional.center,
          ),
          _createItem(
            Icons.restaurant,
            "Refeições",
            () => Navigator.of(context).pushNamed(AppRotas.HOME),
          ),
          _createItem(
            Icons.settings,
            "Confirgurações",
            () => Navigator.of(context).pushNamed(AppRotas.CONFIGURACAO),
          ),
        ],
      ),
    );
  }
}
