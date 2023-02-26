import 'dart:io'; //IDENTIFICADOR DE DISPOSITIVOS

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);
  //ACCION DE ALERTA
  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Este es el contenido de la alerta'),
                SizedBox(
                  height: 10,
                ),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child:
                    const Text('Cancelar', style: TextStyle(color: Colors.red)),
              ),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Ok'))
            ],
          );
        });
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible:
            false, //Permite seleccionar fuera del area para borrar alerta
        context: context,
        builder: (constex) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Titulo'),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Este es el contenido de la alerta'),
                SizedBox(
                  height: 10,
                ),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancelar'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text(
                  'Mostrar alerta IOS',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              onPressed: () => displayDialogIOS(context),
              //SI TU APLICACION CORRE EN IOS MUESTRA ALARTA DE IOS SINO ANDROID ALERT
              /*onPressed: () => !Platform.isIOS //IDENTIFICADOR DE DISPOSITIVOS
                    ? displayDialogIOS(context)
                    : displayDialogAndroid(context)*/
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text(
                  'Mostrar alerta ANDROID',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              onPressed: () => displayDialogAndroid(context),
              //SI TU APLICACION CORRE EN IOS MUESTRA ALARTA DE IOS SINO ANDROID ALERT
              /*onPressed: () => !Platform.isIOS //IDENTIFICADOR DE DISPOSITIVOS
                    ? displayDialogIOS(context)
                    : displayDialogAndroid(context)*/
            ),
          ],
        ),
        //onPressed: () => displayDialogAndroid(context)),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context)),
    );
  }
}
