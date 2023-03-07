import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onSelecao;

  Resposta(this.texto, this.onSelecao);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10, 3, 10, 3),
      child: ElevatedButton(
        onPressed: onSelecao,
        child: Text(
          texto,
          style: TextStyle(fontSize: 18),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 68, 125, 181),
          elevation: 20,
        ),
      ),
    );
  }
}
