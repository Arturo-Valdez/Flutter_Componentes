import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustoomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String name;

  const CustoomCardType2(
      {super.key, required this.imageUrl, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias, //si la imagen se sale del rango corta
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18)), //bordes
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.5), //sombra
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage("assets/jar-loading1.gif"),
            width: double.infinity,
            height: 150,
            fit: BoxFit.cover, //toma todo el espacio disponible
            fadeInDuration: const Duration(
                milliseconds: 300), //tiempo cuando debe aparecer la imagen
          ),
          if (name != '' || name != null)
            //si nombre es indiferente a string vacio o indiferente a null pinta contenedor
            Container(
              alignment: AlignmentDirectional.centerEnd, //aliniacion
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(name),
            )
        ],
      ),
    );
  }
}
