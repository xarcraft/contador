import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = TextStyle(fontSize: 30);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //contiene toda la pantalla de trabajo
        appBar: AppBar(
          //widget superior lo mas parecido a una ventana de titulo
          title: Text('Stateful'),
          centerTitle: true,
        ),
        body: Center(
          //cuerpo de la pantalla de trabajo puede contener todo el diseño central
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Numero de taps',
                style: _estiloTexto,
              ),
              Text('$_conteo', style: _estiloTexto),
            ],
          ),
        ),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _reset),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _sustraer),
        SizedBox(
          width: 10.0,
        ),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar),
      ],
    );
  }

  void _agregar() {
    setState(() {
      _conteo++;
    });
  }

  void _sustraer() {
    setState(() {
      _conteo--;
    });
  }

  void _reset() {
    setState(() {
      _conteo = 0;
    });
  }
}
