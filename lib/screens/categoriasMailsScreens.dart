import 'package:flutter/material.dart';

class CategoriaMailsScreens extends StatelessWidget {
  const CategoriaMailsScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Receitas"),
      ),
      body: Center(
        child: Text("Receitas por categorias"),
      ),
    );
  }
}
