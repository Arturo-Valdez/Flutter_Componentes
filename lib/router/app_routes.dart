import 'package:componentes/models/menu_options.dart';
import 'package:flutter/material.dart';
import 'package:componentes/screens/screens.dart';

class AppRoutes {
  //inicializacion en la ruta home con pantalla HomeScreen()
  static const initialRoute = 'home';

  //RUTAS
  static final menuOptions = <MenuOptions>[
    /*MenuOptions(
        route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home),*/
    MenuOptions(
        route: 'ListView1',
        name: 'Lista tipo 1',
        screen: const ListView1Screen(),
        icon: Icons.list),
    MenuOptions(
        route: 'ListView2',
        name: 'Lista tipo 2',
        screen: const ListView2Screen(),
        icon: Icons.list_alt_outlined),
    MenuOptions(
        route: 'Alert',
        name: 'Alertas - Alert',
        screen: const AlertScreen(),
        icon: Icons.alarm),
    MenuOptions(
        route: 'card',
        name: 'Tarjeta - Card',
        screen: const CardScreen(),
        icon: Icons.card_giftcard),
    MenuOptions(
        route: 'avatar',
        name: 'Circle Avatar',
        screen: const AvatarScreen(),
        icon: Icons.person_add_alt_outlined),
    MenuOptions(
        route: 'Animated',
        name: 'Animated Screen',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_outline),
    MenuOptions(
        route: 'inputs',
        name: 'Inputs Screen',
        screen: const InputsScreen(),
        icon: Icons.input_rounded),
    MenuOptions(
        route: 'slider',
        name: 'Slider Screen',
        screen: const SliderScreen(),
        icon: Icons.scatter_plot_rounded),
    MenuOptions(
        route: 'ListViewBuilder',
        name: 'ListViewBuilder Screen',
        screen: const ListViewBuilderScreen(),
        icon: Icons.live_tv_sharp),
  ];

//mostrar las rutas
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoute = {};
    //Predefinir homescreen
    appRoute.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoute.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoute;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'ListView1': (BuildContext context) => const ListView1Screen(),
  //   'ListView2': (BuildContext context) => const ListView2Screen(),
  //   'Alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

//SI NO EXISTE RUTA MANDAR A ALERTSCREEN
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
