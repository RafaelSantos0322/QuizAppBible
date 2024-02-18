import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  // Crio um atributo chamado texto;
  final String texto;
  // Passo atributo como parâmetro para classe questão;
  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    // Aqui eu retorno o Widget text;
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      padding: EdgeInsetsDirectional.only(top: 25),
      child: Text(
        texto,
        style: TextStyle(
          fontSize: 28,
          color: Colors.blueAccent,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
