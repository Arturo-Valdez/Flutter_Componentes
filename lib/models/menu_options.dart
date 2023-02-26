//Muestra solo los datos necesarios sin traer todas las librerias de material
import 'package:flutter/material.dart' show IconData, Widget;

class MenuOptions {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

//Pide al usuario que llene obligatoriamente todos los campos
  MenuOptions(
      {required this.route, //ruta
      required this.name, //icono
      required this.screen, //nombre de pantalla
      required this.icon /*pantalla a navegar*/});
}
