import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Mantiene la referencia a los witgets
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    //MAPA DEL FORMULARIO Y SUS VALORES
    final Map<String, String> formValues = {
      'first_name': 'SANTIAGO',
      'last_name': 'VALDEZ',
      'email_adrees': 'Valdez@gmail.com',
      'password': '123456',
      'role': "admin",
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs Screen'),
        ),
        body: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                CustomImputField(
                  hintText: 'Nombre de usuario',
                  labelText: 'Nombre',
                  keyboardType: TextInputType.name,
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                //
                const SizedBox(
                  height: 30,
                ),
                CustomImputField(
                  hintText: 'Apellido del usuario',
                  labelText: 'Apellido',
                  keyboardType: TextInputType.name,
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                //
                const SizedBox(
                  height: 30,
                ),
                CustomImputField(
                  hintText: 'Correo del Usuario',
                  labelText: 'Correo',
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email_adrees',
                  formValues: formValues,
                ),
                //
                const SizedBox(
                  height: 30,
                ),
                CustomImputField(
                  hintText: 'Contrasena del usuario',
                  labelText: 'Contrasena',
                  obscureText: true,
                  formValues: formValues,
                  formProperty: 'password',
                ),
                //
                const SizedBox(
                  height: 30,
                ),

                //INPUT DESPLEGABLE
                DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(
                        value: 'SuperUser', child: Text('SuperUser')),
                    DropdownMenuItem(
                        value: 'Dveloper', child: Text('Dveloper')),
                    DropdownMenuItem(
                        value: 'Jr. Developer', child: Text('Jr. Developer')),
                  ],
                  onChanged: (value) {
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());

                      //SI en myFormKey en el estado actual valida confiando

                      // if (!myFormKey.currentState!.validate()) {
                      //   print('FORMULARIO NO VALIDO');
                      //   return;
                      // }
                      //se imprime el formulario MAP
                      print(formValues);
                    },
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Guardar'))))
              ],
            ),
          ),
        ));
  }
}
