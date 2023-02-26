import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController controllerScroll = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    controllerScroll.addListener(() {
      // print(
      //     '${controllerScroll.position.pixels}  -  ${controllerScroll.position.maxScrollExtent}');
      if ((controllerScroll.position.pixels) >=
          (controllerScroll.position.maxScrollExtent)) {
        //add5();
        fetchData();
      }
    });
  }

//CUANDO CONTROLLERSCROLL LLEGUE AL FINAL CREA UN DELAY DE 3 SEGUNDOS, CUANDO YA AALLAN LLEGADO LOS 3 SEGUNDOS O TRANSCURRIDO, EJECUTA LA FUNCION ADD5() Y VULVE A PONER ISLOADIN EN FALSE
  Future fetchData() async {
    if (isLoading) return;

    isLoading = true;
    setState(() {}); //SE REQUIERE PARA EL CAMBIO DE ESTADO

    await Future.delayed(const Duration(seconds: 2));

    add5();

    isLoading = false;
    setState(() {}); //SE REQUIERE PARA EL CAMBIO DE ESTADO

    //
    //Animacion si controllscroll supera menos 100 pixeles no muestres nada, sino continua
    if (controllerScroll.position.pixels + 100 <=
        controllerScroll.position.maxScrollExtent) return;

    controllerScroll.animateTo(controllerScroll.position.pixels + 150,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn); //animacion de un empujon hacia arriba
  }

  void add5() {
    final lastId = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    print('New Reload');
    setState(() {});
  }

//recarga en top0
  Future<void> onRefresh() async {
    //se realiza una espera de 2 segundos
    await Future.delayed(const Duration(seconds: 2));
    //creamos una variable que nos guarde las ultimas imagenes que teniamos
    final lastID = imagesIds.last;
    //se limpia todas las imagens o se borran visualmente
    imagesIds.clear();
    //se agrega la variable donde guardo las ultimas imagenes y le suna uno para aumentar la ID y genere una nueva imagen
    imagesIds.add(lastID + 1);
    //agrega la fincion add5
    add5();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator(
              onRefresh: onRefresh,
              child: ListView.builder(
                physics:
                    const BouncingScrollPhysics(), //PERMITE JALAR LOS ITEMS
                controller: controllerScroll,
                itemCount: imagesIds.length,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage(
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                      placeholder: const AssetImage('assets/jar-loading.gif'),
                      image: NetworkImage(
                          'https://picsum.photos/400/200?image=${imagesIds[index]}'));
                },
              ),
            ),
            if (isLoading)
              Positioned(
                  bottom: 40,
                  left: size.width * 0.5 - 20,
                  child: const _LoadingIcon())
          ],
        ),
      ),
    );
  }
}

////////////////////////
class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        shape: BoxShape.circle,
      ),
      child: const CircularProgressIndicator(
        //ANIMACION DE CARGA
        color: AppTheme.primary,
      ),
    );
  }
}
