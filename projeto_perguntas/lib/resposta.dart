import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String resposta;
  final void Function() onClick;

  Resposta(this.resposta, this.onClick);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(resposta),
        textColor: Colors.white,
        color: Colors.purple,
        onPressed: onClick,
      ),
    );
  }
}
