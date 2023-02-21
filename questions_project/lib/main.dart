import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
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
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
              onPressed: responder, 
              child: Text('Resposta 1'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 215, 184, 252),
              ),
            ),
            ElevatedButton(
              onPressed: responder, 
              child: Text('Resposta 2'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 215, 184, 252),
              ),
            ),
            ElevatedButton(
              onPressed: responder, 
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
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
