import 'package:flutter/material.dart';

//COLORES GLOBALES TEMAS
class AppTheme {
  static const Color primary = Colors.indigo;

  //TEMAS DE ESTADO LIGHT
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //COLOR PRIMARIO
      primaryColor: Colors.indigo,
      //TEMA DEL APPBAR
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primary),
      ),
      iconTheme: const IconThemeData(color: primary),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary, elevation: 5),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: primary, shape: const StadiumBorder(), elevation: 0)),
      inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primary),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)))));

  /*##################################################################*/
  //TEMA DE ESTADO DARK
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //COLOR PRIMARIO
      primaryColor: Colors.indigo,
      //TEMA DEL APPBAR
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      //FONDO DE PANTALLA SCAFFOLD
      scaffoldBackgroundColor: Colors.black38);
}
