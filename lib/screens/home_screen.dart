import 'package:flutter/material.dart';
import 'package:componentes/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Componentes')),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(menuOptions[index].name),
                  leading: Icon(
                    menuOptions[index].icon,
                    color: Colors.indigo,
                  ),
                  onTap: () {
                    //NAVEGACION DE RUTAS ENTRE SCREENS PANTALLAS
                    /*final route = MaterialPageRoute(
                        builder: (context) => const ListView1Screen());
                    //Destrulle la pagiona anterior al navegar a la otra, tipo login
                    //Navigator.pushReplacement(context, route);

                    //NAVEGA CON RETORNO
                    Navigator.push(context, route);*/

                    //NAVEGACION RAPIDA
                    Navigator.pushNamed(context, menuOptions[index].route);
                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: AppRoutes.menuOptions.length));
  }
}
