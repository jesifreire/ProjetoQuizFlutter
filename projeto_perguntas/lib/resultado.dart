import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Parabéns!',
        style: TextStyle(fontSize: 30, color: Colors.purple[800]),
        //icon: Icon(Icons.sentiment_satisfied_alt),
      ),
    );
  }
}
