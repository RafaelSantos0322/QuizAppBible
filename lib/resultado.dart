import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuiz;

  Resultado(this.pontuacao, this.reiniciarQuiz);
  nivelPontuacao() {
    var nivel;
    if (pontuacao <= 20) {
      return nivel =
          "Parabéns, Seu Conhecimento é Nivel Bronze \n- Você Marcou $pontuacao Pontos";
    } else if ((pontuacao >20) &&  (pontuacao <= 60)) {
      return nivel =
          "Parabéns, Seu Conhecimento é Nivel Prata \n- Você Marcou $pontuacao Pontos";
    } else if ((pontuacao > 60) && (pontuacao <= 110)) {
      return nivel =
      "Parabéns, Seu Conhecimento é Nivel Ouro \n- Você Marcou $pontuacao Pontos";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            nivelPontuacao().toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
            ),
          ), //;
          SizedBox(
            child: Padding(
              padding: EdgeInsets.all(
                20,
              ),
            ),
          ), //;
          ElevatedButton(
            // Proximas Melhorias vai ser a alteração da cor ao clicar

            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                Colors.blueAccent,

              ),
            ),
            onPressed: reiniciarQuiz,
            
            child: Text(
              "Reiniciar Quiz",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
    );
  }
}
