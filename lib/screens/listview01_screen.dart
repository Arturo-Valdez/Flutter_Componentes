import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const [
    'pokemon',
    'digimon',
    'chicas super poderosas',
    'rayo maqueen'
  ];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Tipo 1'),
        ),
        body: ListView(
          //lista de vistas en scroll
          children: [
            //mostrar listas con map
            ...options
                .map((series) => ListTile(
                      //icono de poro de nieve inicial
                      leading: const Icon(Icons.ac_unit_sharp),
                      title: Text(series),
                      //flecha a la derecha
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    ))
                .toList()
          ],
        ));
  }
}
