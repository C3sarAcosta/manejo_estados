import 'package:get/get.dart';
import 'package:manejo_estados/models/usuario.dart';

class UsuarioController extends GetxController {
  //Observables
  var existeUsuario = false.obs;
  var usuario = new Usuario().obs;

  //Metodo para crear usuario y cambiar el valor del observable
  void cargarUsuario(Usuario usuario) {
    this.existeUsuario.value = true;
    this.usuario.value = usuario;
  }

  void cambiarEdad(int edad) {
    this.usuario.update((val) {
      val!.edad = edad;
    });
  }
}
