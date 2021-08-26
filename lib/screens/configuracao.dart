import 'package:flutter/material.dart';
import 'package:navegacao/models/settings.dart';

class Configuracao extends StatefulWidget {
  const Configuracao({Key? key}) : super(key: key);

  @override
  _ConfiguracaoState createState() => _ConfiguracaoState();
}

class _ConfiguracaoState extends State<Configuracao> {
  var settings = Settings();
  Widget _createSwitch(
    String titulo,
    String subtitulo,
    bool valor,
    void Function(bool) fun,
  ) {
    return SwitchListTile.adaptive(
      title: Text(titulo),
      subtitle: Text(subtitulo),
      value: valor,
      onChanged: fun,
    );
  }

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
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Configurações",
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  _createSwitch(
                    "Sem Glutem",
                    "Só exibe refeições sem glutem",
                    settings.isGlutenFree!,
                    (valor) => setState(() => settings.isGlutenFree = valor),
                  ),
                  _createSwitch(
                    "Sem Lactose",
                    "Só exibe refeições sem Lactose",
                    settings.isLactoseFree!,
                    (valor) => setState(() => settings.isLactoseFree = valor),
                  ),
                  _createSwitch(
                    "Veganas",
                    "Só exibe refeições Veganas",
                    settings.isVegan!,
                    (valor) => setState(() => settings.isVegan = valor),
                  ),
                  _createSwitch(
                    "Vegetariana",
                    "Só exibe refeições Vegetariana",
                    settings.isVegetarian!,
                    (valor) => setState(() => settings.isVegetarian = valor),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
