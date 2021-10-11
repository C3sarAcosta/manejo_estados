import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manejo_estados/controllers/usuario_controller.dart';
import 'package:manejo_estados/models/usuario.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //print(Get.arguments);
    //print(Get.arguments['Materia']);
    final usuarioCtrl = Get.find<UsuarioController>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina2'),
      ),
      body: Center(
        child: Column(children: [
          MaterialButton(
            color: Colors.orange,
            child: Text('Establecer usuario',
                style: TextStyle(color: Colors.white)),
            onPressed: () {
              usuarioCtrl.cargarUsuario(Usuario(nombre: 'César', edad: 28));
            },
          ),
          MaterialButton(
            color: Colors.orange,
            child: Text('Cambiar edad', style: TextStyle(color: Colors.white)),
            onPressed: () {},
          ),
          MaterialButton(
            color: Colors.orange,
            child:
                Text('Agregar Materia', style: TextStyle(color: Colors.white)),
            onPressed: () {},
          ),
        ]),
      ),
    );
  }
}
