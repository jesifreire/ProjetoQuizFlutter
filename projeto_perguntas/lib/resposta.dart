import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onClick;

  Resposta(this.texto, this.onClick);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(texto),
        textColor: Colors.white,
        color: Colors.purple[300],
        onPressed: onClick,
      ),
    );
  }
}
