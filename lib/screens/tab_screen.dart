import 'package:flutter/material.dart';
import 'package:navegacao/components/main_drawer.dart';
import 'package:navegacao/screens/categoriasScreens.dart';
import 'package:navegacao/screens/favorite_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int selectedScreenIndex = 0;
  final List<Map<String, Object>> screen = [
    {"titulo": "Lista de Categorias", "screen": CategoriaScreen()},
    {"titulo": "Meus Favoritos", "screen": FavoriteScreen()}
  ];
  void _selectScreen(int index) {
    setState(() {
      selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(screen[selectedScreenIndex]["titulo"].toString()),
        centerTitle: true,
      ),
      drawer: MainDrawer(),
      body: screen[selectedScreenIndex]["screen"] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).primaryColor,
        // backgroundColor mudar a cor de fundo da barra do BottomNavigationBar
        unselectedItemColor: Colors.white,
        //unselectedItemColor muda a cor do icone
        selectedItemColor: Theme.of(context).accentColor,
        // selectedItemColor muda a cor do icone selecionado
        currentIndex: selectedScreenIndex,
        //currentIndex pega a seleção
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Categoria",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favoritos",
          )
        ],
      ),
    );
  }
}
