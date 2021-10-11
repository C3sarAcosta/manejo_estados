import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manejo_estados/pages/pagina1__page.dart';
import 'package:manejo_estados/pages/pagina2_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Manejador de estados',
      initialRoute: '/pagina1',
      /*routes: {
        'pagina1': (_) => Pagina1Page(),
        'pagina2': (_) => Pagina2Page()
      },*/
      getPages: [
        //Podemos usar inyeccion de dependencias
        GetPage(name: '/pagina1', page: () => Pagina1Page()),
        GetPage(name: '/pagina2', page: () => Pagina2Page())
      ],
    );
  }
}
