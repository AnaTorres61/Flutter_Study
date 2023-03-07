import 'package:flutter/material.dart';

class Questao extends StatelessWidget {

  final String texto;

  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200.0,
      margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 40.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color.fromARGB(216, 253, 254, 255),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Text(
        texto,
        style: TextStyle(
          fontSize: 28,
          color: Color.fromARGB(255, 68, 125, 181),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
