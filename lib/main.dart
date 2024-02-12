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
  String dato = "Hola desde el padre";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App con envío de datos'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(dato),
          HijoWidget(dato),
        ],
      ),
    );
  }
}

class HijoWidget extends StatelessWidget {
  final String datoDesdePadre;

  HijoWidget(this.datoDesdePadre);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Text('Mensaje del hijo: $datoDesdePadre'),
    );
  }
}