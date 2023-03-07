import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionaro;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionaro);

  String get fraseResultado {
    if (pontuacao == 0) {
      return 'Estude mais!';
    } else if (pontuacao < 35) {
      return 'Você está quase lá';
    } else if (pontuacao < 67) {
      return 'Estude só mais um pouquinho';
    } else {
      return 'Parabéns!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      // height: double.infinity,
      margin: EdgeInsets.fromLTRB(10.0, 100.0, 10.0, 100.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color.fromARGB(216, 253, 254, 255),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            pontuacao.toString(),
            style: TextStyle(fontSize: 50, color: Color.fromARGB(255, 68, 125, 181)),
          ),
          Text(
            fraseResultado,
            style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 68, 125, 181)),
          ),
          ElevatedButton(
            onPressed: quandoReiniciarQuestionaro, 
            child: Text('REINICIAR'),
            style: TextButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 20,
              ),
              backgroundColor: Color.fromARGB(255, 68, 125, 181)
            ),
          ),
        ],
      ),
    );
  }
}
