import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estiloTexto = TextStyle(fontSize: 30);

  final conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //contiene toda la pantalla de trabajo
      appBar: AppBar(
        //widget superior lo mas parecido a una ventana de titulo
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        //cuerpo de la pantalla de trabajo puede contener todo el diseño central
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Numero de taps',
              style: estiloTexto,
            ),
            Text('$conteo', style: estiloTexto),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //este widget crea un boton flotante dentro del scaffold
        child: Icon(Icons.add),
        onPressed: () {
          print('Hola mundo!!');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerFloat, //este widget posiciona el boton en un lugar determinado
    );
  }
}
