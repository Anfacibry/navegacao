import 'package:flutter/material.dart';
import 'package:navegacao/models/categoria.dart';

class CategoriaItem extends StatelessWidget {
  final Categoria categoria;
  const CategoriaItem(
    this.categoria, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
