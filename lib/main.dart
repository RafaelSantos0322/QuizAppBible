import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';

// Ponto de entrada principal do APP onde atraves do método runApp chama a "raiz" que é o item pai ou inicial do meu projeto;

main() => runApp(PerguntaAPPGospel());

// Aqui eu passo todos os códigos que estavam na antiga classe que herdava de Steteless,

class _PerguntaAPPGospelState extends State<PerguntaAPPGospel> {
  int _proximaPergunta = 0;
  int _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'Texto': 'Quantos Discípulos Jesus Chamou ?',
      'Respostas': [
        // usar o  ctrl + d para selecionar mais de um item com o mesmo nome;
        {
          'itemText': '120 discípulos',
          'itemPontuacao': 0,
        },
        {
          'itemText': '15 discípulos',
          'itemPontuacao': 0,
        },
        {
          'itemText': '12 discípulos',
          'itemPontuacao': 10,
        },
        {
          'itemText': '5000 discípulos',
          'itemPontuacao': 0,
        },
      ],
    },
    {
      'Texto': ' Qual o Menor Versiculo da Biblia ?',
      'Respostas': [
        // jo 3 2 Na Biblia Almeida Revista e Atualizada
       
        {
          'itemText': 'Salmos 121:2',
          'itemPontuacao': 0,
        },
        {
          'itemText': 'Jô 3:2',
          'itemPontuacao': 10,
        },
        {
          'itemText': 'Deterônomio 10:7',
          'itemPontuacao': 0,
        },
        {
          'itemText': 'Mateus 7:7',
          'itemPontuacao': 0,
        },
      ],
    },
    {
      'Texto': ' Quantas Vezes Devemos Perdoar ?',
      'Respostas': [
        {
          'itemText': '50 vezes',
          'itemPontuacao': 0,
        },
        
        {
          'itemText': '70x70 vezes',
          'itemPontuacao': 0,
        },
        {
          'itemText': '70x7 vezes',
          'itemPontuacao': 10,
        },
        {
          'itemText': '7 vezes',
          'itemPontuacao': 0,
        },
      ],
    },
    {
      'Texto': ' Qual a Forma Elias foi Levado ao Céu ?',
      'Respostas': [
        {
          'itemText': 'Nas Asas Do Querubim',
          'itemPontuacao': 0,
        },
        {
          'itemText': 'Na Carruagem de Fogo',
          'itemPontuacao': 0,
        },
        {
          'itemText': 'No Cavalo de Fogo',
          'itemPontuacao': 0,
        },
        {
          'itemText': 'No Redemunhinho',
          'itemPontuacao': 10,
        },
      ],
    },
    {
      'Texto': ' Quantos Casais de Animais Puros Entraram na Arca ?',
      'Respostas': [
        {
          'itemText': '2 Casais',
          'itemPontuacao': 0,
        },
        {
          'itemText': '7 Casais',
          'itemPontuacao': 10,
        },
        {
          'itemText': '1 Casal',
          'itemPontuacao': 0,
        },
        {
          'itemText': 'A Arca Era De Moíses',
          'itemPontuacao': 0,
        },
      ],
    },
    {
      'Texto': ' Qual Desses não Teve Seu Nome Mudado ?',
      'Respostas': [
        {
          'itemText': 'Pedro',
          'itemPontuacao': 0,
        },
        {
          'itemText': 'Abraão',
          'itemPontuacao': 0,
        },
        {
          'itemText': 'Davi',
          'itemPontuacao': 10,
        },
        {
          'itemText': 'Sara',
          'itemPontuacao': 0,
        },
      ],
    },
    {
      'Texto': ' Qual o Nome da Cidade em Que Jesus Nasceu ?',
      'Respostas': [
        {
          'itemText': 'Jerusalém',
          'itemPontuacao': 0,
        },
        {
          'itemText': 'Galiléia',
          'itemPontuacao': 0,
        },
        {
          'itemText': 'Belém',
          'itemPontuacao': 10,
        },
        {
          'itemText': 'Samaria',
          'itemPontuacao': 0,
        },
      ],
    },
    {
      'Texto': '  Quem era a Mulher que Ameaçou de Morte ao Profeta Elias? ?',
      'Respostas': [
        {
          'itemText': ' Jezabel',
          'itemPontuacao': 10,
        },
        {
          'itemText': ' Joezabel',
          'itemPontuacao': 0,
        },
        {
          'itemText': 'Gezabell',
          'itemPontuacao': 0,
        },
        {
          'itemText': 'Geyzabell',
          'itemPontuacao': 0,
        },
      ],
    },
    {
      'Texto': ' Qual o nome da esposa de José, filho de Jacó? ?',
      'Respostas': [
        {
          'itemText': 'Potífera',
          'itemPontuacao': 0,
        },
        {
          'itemText': 'Quetura',
          'itemPontuacao': 00,
        },
        {
          'itemText': ' Asenate',
          'itemPontuacao': 10,
        },
        {
          'itemText': 'Zípora',
          'itemPontuacao': 0,
        },
      ],
    },
    {
      'Texto': ' Qual dos profetas fez flutuar o ferro de um machado ?',
      'Respostas': [
        {
          'itemText': 'O Profeta Isaías',
          'itemPontuacao': 0,
        },
        {
          'itemText': 'O Profeta Elias',
          'itemPontuacao': 0,
        },
        {
          'itemText': 'O Profeta Ezequiel',
          'itemPontuacao': 0,
        },
        {
          'itemText': 'O Profeta Eliseu',
          'itemPontuacao': 10,
        },
      ],
    },
  ];
  void _resposta(int pontuacao) {
    // O setState fica responsavál por controlar o item que alterará o estado da aplivação;
    if (temPerguntaSelecionada) {
      setState(
        () {
          _proximaPergunta++;
          _pontuacaoTotal += pontuacao;
        },
      );
    }
  }
  void _reiniciarApp() {
    // O setState fica responsavál por controlar o item que alterará o estado da aplivação;
    
      setState(() {
          _proximaPergunta = 0;
          _pontuacaoTotal = 0;
        });
    
    }
  

  bool get temPerguntaSelecionada {
    return _proximaPergunta < _perguntas.length;
  }

// Essa Notação informa que o metódo abaixo será sobreescrito
  @override
  Widget build(BuildContext context) {
// O contexto é passado automáticamente pelo flutter ao meu projeto;

    return MaterialApp(
// Aqui eu passo a informação que será retornada a Classe MaterialApp  Dentro dela    eu acesso os parâmetros nomoedos;

      // Scaffold significa andaime ou esqueleto e tem o sentido de estrutura no projeto / Aplicação
      home: Scaffold(
        // Dentro dele posso chamar vários métodos que vão configurar o appBar;
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(60, 51, 175, 1),
          centerTitle: true,
          // Aqui eu passo o texto que será exibido no APPBAR;
          title: Text(
            'Perguntas Biblicas',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ), // APPBAR
        // Dentro de Column passamos children que recebe uma lista de Widgets
        body: temPerguntaSelecionada
            ? Questionario(
                listaPerguntasRecebida: _perguntas,
                contadorProximaPergunta: _proximaPergunta,
                itemLista: 'Respostas',
                quandoPrecionado: _resposta,
              )
            : Resultado(_pontuacaoTotal, _reiniciarApp),

        // FECHAMENTO DO ESQUELETO
      ),
    ); // FECHAMENTO DO MATERIALAPP
  }
}

// Aqui eu crio minha Classe que é uma extensão de StatelessWidget;
// Como já informado pelo professor tudo no flutter e um Widget;
class PerguntaAPPGospel extends StatefulWidget {
  // Para que isso funcione eu tenho que implementar dentro da classe um metódo que Cria um estado e retorna um o PerguntaAPPGospelState a fim que toda o codigo fosse alterado conforme o clique do usuário;

  _PerguntaAPPGospelState createState() {
    return _PerguntaAPPGospelState();
  }
}
