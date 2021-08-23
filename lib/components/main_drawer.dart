import "package:flutter/material.dart";

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget _createItem(IconData icon, String label) {
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
      onTap: () {},
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
          _createItem(Icons.restaurant, "Refeições"),
          _createItem(Icons.settings, "Confirgurações"),
        ],
      ),
    );
  }
}
