import 'package:flutter/material.dart';

class CustomImputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? suffixIcon;
  final IconData? icon;
  final TextInputType? keyboardType;
  final bool obscureText;

  //VALORES DEL FORMULARIO
  final String formProperty;
  //MAPA DE VALORES DEL FORMULARIO
  final Map<String, String> formValues;

  const CustomImputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.suffixIcon,
    this.icon,
    this.keyboardType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Center(
        child: TextFormField(
          autofocus: false,
          initialValue: '',
          keyboardType: keyboardType, //tipo de teclado
          obscureText: obscureText,
          textCapitalization: TextCapitalization.words,
          onChanged: (value) {
            formValues[formProperty] = value;
          },
          //VALIDADOR DE CAJA DE TEXTO
          validator: (value) {
            if (value == null) return 'Este campo es requerido';
            return value.length < 3 ? 'Es min 3 letras' : null;
          },
          //VALIDADOR ACCION VALIDAR
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            hintText: hintText, //dentro a arriba de caja
            labelText: labelText, //dentro de caja
            helperText: helperText,
            //counterText: '10 caracteres',
            //suffix: Icon(Icons.verified_user_outlined),
            suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
            icon: icon == null ? null : Icon(icon),
          ),
        ),
      ),
    );
  }
}
