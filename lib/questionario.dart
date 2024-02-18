import 'package:flutter/material.dart';
import 'package:projeto_perguntas/opcoes.dart';

import 'questao.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> listaPerguntasRecebida;
  final int contadorProximaPergunta;
  final String itemLista;
  final void Function(int) quandoPrecionado;

  Questionario({
    required this.listaPerguntasRecebida,
    required this.contadorProximaPergunta,
    required this.itemLista,
    required this.quandoPrecionado,
  });

  bool get temPerguntaSelecionada {
    return contadorProximaPergunta < listaPerguntasRecebida.length;
  }

  @override
  Widget build(BuildContext context) {
    // Aqui se assemelha a um for in onde cada item
    // Gerado é imcorporado a uma lista;
    List<Map<String, Object>> itemResposta = temPerguntaSelecionada
        ? listaPerguntasRecebida[contadorProximaPergunta].cast()[itemLista]
        : [];
    return Column(
      children: <Widget>[
        // Passo para a Classe questão o código a ser renderizado
        Questao(
          // Usar o toString para esse método funcionar;
          listaPerguntasRecebida[contadorProximaPergunta]['Texto'].toString(),
        ),
        // Que posteriormente será transformado em um map e passado para a classe opções que renderizará todos os item como um opção
        Container(
          height: 400,
          child: ListView.builder(
              itemCount: itemResposta.length,
              itemBuilder: (context, index) {
                final opcao = itemResposta[index];

                return Opcoes(
                  opcao['itemText'].toString(),
                  () => quandoPrecionado(
                    int.parse(
                      opcao['itemPontuacao'].toString(),
                    ),
                  ),
                );
              }),
        ),
        // Fim elevaterButton;
      ],
    );
  }
}
