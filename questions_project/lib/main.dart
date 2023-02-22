import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          backgroundColor: Color.fromARGB(255, 215, 184, 252),
        ),
        body: Column(
          children: [
            Text(perguntas[_perguntaSelecionada]),
            ElevatedButton(
              onPressed: _responder, 
              child: Text('Resposta 1'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 215, 184, 252),
              ),
            ),
            ElevatedButton(
              onPressed: _responder, 
              child: Text('Resposta 2'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 215, 184, 252),
              ),
            ),
            ElevatedButton(
              onPressed: _responder, 
              child: Text('Resposta 3'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 215, 184, 252),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
