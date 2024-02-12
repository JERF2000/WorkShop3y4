import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PadreWidget(),
    );
  }
}

class PadreWidget extends StatefulWidget {
  @override
  _PadreWidgetState createState() => _PadreWidgetState();
}

class _PadreWidgetState extends State<PadreWidget> {
  String dato = "Hola soy el Padre";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Envío de Datos entre Padre e Hijo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(dato),
          HijoWidget(
            datoDesdePadre: dato,
            actualizarDato: (nuevoDato) {
              setState(() {
                dato = nuevoDato;
              });
            },
          ),
        ],
      ),
    );
  }
}

class HijoWidget extends StatelessWidget {
  final String datoDesdePadre;
  final Function(String) actualizarDato;

  HijoWidget({required this.datoDesdePadre, required this.actualizarDato});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text('Mensaje del Hijo: $datoDesdePadre'),
          ElevatedButton(
            onPressed: () {
              actualizarDato("Hola soy el hijo");
            },
            child: Text("Actualizar dato en el padre"),
          ),
        ],
      ),
    );
  }
}