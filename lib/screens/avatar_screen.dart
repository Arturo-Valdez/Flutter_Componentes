import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Arturo Valdez',
        ),
        //SE CREA UN MINIAVATAR PARA USER EN APPBAR
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text('SV'),
            ),
          )
        ],
      ),
      //AVATAR EN GRANDE
      body: const Center(
        child: CircleAvatar(
            maxRadius: 110,
            backgroundImage: NetworkImage(
                'https://st1.uvnimg.com/d5/d9/fc75a2ff4a7d896435f498aa3c58/image-3.jpg')),
      ),
    );
  }
}
