import 'package:flutter/material.dart';
import 'package:navegacao/data/dummy_data.dart';
import 'package:navegacao/models/categoria.dart';
import 'package:navegacao/screens/categoriasMailsScreens.dart';

class CategoriaItem extends StatelessWidget {
  final Categoria categoria;
  const CategoriaItem(
    this.categoria, {
    Key? key,
  }) : super(key: key);

  void _navegandoTelas(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return CategoriaMailsScreens(categoria, LISTA_MEALS);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _navegandoTelas(context),
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Text(categoria.title!),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [
              categoria.color!.withOpacity(0.4),
              categoria.color!,
            ],
            begin: Alignment.topRight, //do topo esquerdo
            end: Alignment.bottomLeft, //para o baixo direito
          ),
        ),
      ),
    );
  }
}
