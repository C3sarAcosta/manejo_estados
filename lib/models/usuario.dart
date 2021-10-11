class Usuario {
  //? El atributo es opcional
  String? nombre;
  int? edad;
  //Las materias son obligatorias
  List<String> materias;

  //Las materias las inicializamos con una lista vacia
  Usuario({this.nombre, this.edad, this.materias = const []});
}
