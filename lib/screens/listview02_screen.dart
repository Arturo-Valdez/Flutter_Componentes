import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    'pokemon',
    'digimon',
    'chicas super poderosas',
    'rayo maqueen'
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Tipo 2'),
          //sombra
        ),
        body: ListView.separated(
          //cantidad de items
          itemCount: options.length,
          //construccion del listado
          itemBuilder: (context, index) => ListTile(
            title: Text(options[index]),
            //flecha a la derecha
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
            ),
            onTap: () {
              final serie = options[index];
              print(serie);
            },
          ),
          //realiza una divicion con una linia para separar los textos
          separatorBuilder: (context, index) => const Divider(),
        ));
  }
}
