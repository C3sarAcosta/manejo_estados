import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manejo_estados/controllers/usuario_controller.dart';
import 'package:manejo_estados/models/usuario.dart';
import 'package:manejo_estados/pages/pagina2_page.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Guardar la informacion de la inyeccion de dependencia
    final usuarioCtrl = Get.put(UsuarioController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
      ),
      //Obx es de Getx y cada vez que cambia una propiedad de estado, se redibuja el widget
      body: Obx(() => usuarioCtrl.existeUsuario.value
          ? InformacionUsuario(
              usuario: usuarioCtrl.usuario.value,
            )
          : NoUsuario()),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.dashboard_customize),
          onPressed: () => Get.toNamed('pagina2',
              arguments: {'Materia': 'Moviles II', 'Alumno': 'César'})),
    );
  }
}

class NoUsuario extends StatelessWidget {
  const NoUsuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('No existe usuario'),
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  final Usuario usuario;
  const InformacionUsuario({Key? key, required this.usuario}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Usuario'),
          Divider(),
          ListTile(
            title: Text('Nombre: ${this.usuario.nombre}'),
          ),
          ListTile(
            title: Text('Edad: ${this.usuario.edad}'),
          ),
          Text('Materias'),
          Divider(),
          ...usuario.materias.map(
            (e) => ListTile(
              title: Text(e),
            ),
          ),
        ],
      ),
    );
  }
}
