import 'package:flutter/material.dart';
import 'package:componentes/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Slider Screen'),
        ),
        body: Column(
          children: [
            //SLIDER (control deslizante)
            Slider.adaptive(
                activeColor: AppTheme.primary,
                min: 50,
                max: 400,
                value: _sliderValue,
                //Si sliderEnable es igual a true puede usarse, sino se congela
                onChanged: _sliderEnable
                    ? (value) {
                        //print(value);
                        _sliderValue = value;
                        setState(() {});
                      }
                    : null),
            //
            //
            // Checkbox(
            //     activeColor: AppTheme.primary,
            //     value: _sliderEnable,
            //     onChanged: (value) {
            //       _sliderEnable = value ?? true;
            //       setState(() {});
            //     }),
            // Switch(
            //     activeColor: AppTheme.primary,
            //     value: _sliderEnable,
            //     onChanged: (value) {
            //       _sliderEnable = value ?? true;
            //       setState(() {});
            //     }),

            CheckboxListTile(
                activeColor: AppTheme.primary,
                title: const Text('Habilitar Slider'),
                value: _sliderEnable,
                onChanged: (value) => setState(() {
                      _sliderEnable = value ?? true;
                    })),
            //
            //
            SwitchListTile(
                activeColor: AppTheme.primary,
                title: const Text('Habilitar Slider'),
                value: _sliderEnable,
                onChanged: (value) => setState(() {
                      _sliderEnable = value ?? true;
                    })),
            //const AboutListTile(),
            //PERMITE AL WITGET EXPANDIRSE DE MAS YA QUE TIENE UN RANGO LIMITADO Y LO EJECUTA SOLO EN LA IMAGEN Y DEJA AL SLIDER STATICO
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://i.pinimg.com/originals/d5/e5/74/d5e574aec285e57b79a3ee87de866cf7.jpg'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ));
  }
}
