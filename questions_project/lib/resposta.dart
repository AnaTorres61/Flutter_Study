import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onSelecao;

  Resposta(this.texto, this.onSelecao);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(right: 10,left: 10),
      child: ElevatedButton(
        onPressed: onSelecao,
        child: Text(
          texto,
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 215, 184, 252),
        ),
      ),
    );
  }
}
