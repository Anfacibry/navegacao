import 'package:flutter/material.dart';

class Configuracao extends StatelessWidget {
  const Configuracao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
        centerTitle: true,
        title: Text("Configuração"),
      ),
      body: Center(
        child: Text("Configuração"),
      ),
    );
  }
}
