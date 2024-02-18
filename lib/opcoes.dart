import 'package:flutter/material.dart';

class Opcoes extends StatelessWidget {
  final String texto;
  final void Function() quandoPrecionado;
  Opcoes(this.texto, this.quandoPrecionado);

  @override
  Widget build(BuildContext context) {
    return // Com esse Crio buttons clicaveis que responderão a pergunta elaborada acima;;
        Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: ElevatedButton(
        // o Child seria oque vai aparecer parecido com a label;
        // Todaas as formatações serão feitas dentro do widget child-Text
        child: Text(
          texto,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        //; o onPressed pode chamar uma ação/função ao ocorrer o toque feito pelo usuário;;

        onPressed: quandoPrecionado,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
        ),
      ), //;
    ); // Fim elevaterButton
    //  Final ElavatedButton
  }
}
