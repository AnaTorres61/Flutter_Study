import 'package:flutter/material.dart';
import './questionario.dart';
import 'resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final /*List<Map<String,Object>>*/ _perguntas = const [
    {
      'texto': 'As fases do processamento são: ',
      'respostas': [
        {'texto': 'Monotarefa, Monousuario e Multitarefa', 'pontuacao': 0},
        {'texto': 'Entrada, Processamento e Saída', 'pontuacao': 33},
        {'texto': 'Operação, Linguagem e Aplicação', 'pontuacao': 0},
        {'texto': 'Programação, Instalação e Registro', 'pontuacao': 0},
      ]
    },
    {
      'texto': 'O que não é uma das 4 fuções principais do computador?',
      'respostas': [
        {'texto': 'Processamento de Dados', 'pontuacao': 0},
        {'texto': 'Armazenamento de Dados', 'pontuacao': 0},
        {'texto': 'Compilação de código', 'pontuacao': 33},
        {'texto': 'Movimentação de Dados', 'pontuacao': 0},
        {'texto': 'Controle', 'pontuacao': 0},
      ],
    },
    {
      'texto': 'Processadores RISC executam instruções com menos rapidez do os processadores CISC?',
      'respostas': [
        {'texto': 'Sim', 'pontuacao': 0},
        {'texto': 'Não', 'pontuacao': 34},
      ],
    }
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ARQUICOMP - QUIZ'),
          backgroundColor: Color.fromARGB(255, 68, 125, 181),
        ),
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/wallpaper.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultado(_pontuacaoTotal,_reiniciarQuestionario),
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
