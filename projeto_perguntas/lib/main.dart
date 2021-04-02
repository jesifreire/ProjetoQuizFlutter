import 'package:flutter/material.dart';
import 'resultado.dart';
import 'questionario.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'Azul', 'pontuacao': 10},
        {'texto': 'Verde', 'pontuacao': 10},
        {'texto': 'Branco', 'pontuacao': 10},
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Cachorro', 'pontuacao': 10},
        {'texto': 'Gato', 'pontuacao': 8},
        {'texto': 'Baleia', 'pontuacao': 10},
        {'texto': 'Peixe', 'pontuacao': 9},
      ],
    },
    {
      'texto': 'Qual o seu desenho favorito?',
      'respostas': [
        {'texto': 'Snoopy', 'nota': 10},
        {'texto': 'Três Espiãs Demais', 'nota': 9},
        {'texto': 'Dragon Ball', 'nota': 8},
        {'texto': 'She-Ra', 'nota': 10},
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
    print(_pontuacaoTotal);
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada]['respostas']
        : null;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Perguntas',
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontSize: 25,
            ),
          ),
          backgroundColor: Colors.purple[300],
          centerTitle: true,
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder,
              )
            : Resultado(),
      ),
    );
  }
}
