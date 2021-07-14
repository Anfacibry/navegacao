import 'package:flutter/material.dart';
import 'package:navegacao/models/categoria.dart';

class CategoriaMailsScreens extends StatelessWidget {
  final Categoria categoria;
  const CategoriaMailsScreens(this.categoria, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoria.id!),
      ),
      body: Center(
        child: Text(categoria.title!),
      ),
    );
  }
}
