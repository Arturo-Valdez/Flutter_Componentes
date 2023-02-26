import 'package:flutter/material.dart';
import 'package:componentes/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(
              height: 10,
            ),
            CustoomCardType2(
              imageUrl:
                  'https://codigoesports.com/wp-content/uploads/2021/07/LoL-Jhin-Luna-de-Sangre.jpg',
              name: 'Jhin luna de sangre',
            ),
            SizedBox(
              height: 10,
            ),
            CustoomCardType2(
              imageUrl:
                  'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/a8116818-2772-47ba-abfb-96f8ef166a70/dayb7aw-41cd54f8-28df-4bc2-b70f-d453ce877c70.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2E4MTE2ODE4LTI3NzItNDdiYS1hYmZiLTk2ZjhlZjE2NmE3MFwvZGF5Yjdhdy00MWNkNTRmOC0yOGRmLTRiYzItYjcwZi1kNDUzY2U4NzdjNzAuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.gNRmJhU9A1G2DMZcSxro4VCv48xRY8MPgZxi8egF1nE',
              name: 'Yasuo luna de sangre',
            ),
            SizedBox(
              height: 10,
            ),
            CustoomCardType2(
              imageUrl: 'http://god-mode.gg/wp-content/uploads/2022/03/260.png',
              name: 'Jinx New Skin',
            ),
            SizedBox(
              height: 10,
            ),
            CustoomCardType2(
              imageUrl:
                  'https://www.esportmaniacos.com/wp-content/uploads/2021/06/Kayn_2.jpg',
              name: 'Kayn New Skin',
            ),
            SizedBox(
              height: 100,
            )
          ],
        ));
  }
}
