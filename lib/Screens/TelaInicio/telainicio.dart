import 'package:aifood/CustomWidgets/card.dart';
import 'package:aifood/CustomWidgets/perfilLoja.dart';
import 'package:aifood/CustomWidgets/slide.dart';
import 'package:aifood/CustomWidgets/style.dart';
import 'package:flutter/material.dart';

class TelaInicio extends StatefulWidget {
  const TelaInicio({super.key});

  @override
  State<TelaInicio> createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'R. Ari Barroso, 330',
          style: textNunito300(14),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Row(
            children: [
              card(190, 80, Colors.deepPurple, 'Pet', "assets/pet.png"),
              card(190, 80, Colors.deepPurple, 'Mercado', "assets/mercado.png")
            ],
          ),
          Row(
            children: [
              card2(90, 109, Colors.deepPurple[50], "Farmácia",
                  'assets/farmacia.png'),
              card2(90, 109, Colors.deepPurple[50], "Bebidas",
                  'assets/bebidas.png'),
              const SizedBox(width: 10),
              card2(
                  90, 109, Colors.deepPurple[50], "Sucos", 'assets/sucos.png'),
              card2(
                  90, 109, Colors.deepPurple[50], "Pizza", 'assets/pizza.png'),
            ],
          ),
          Slide(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Clube aiFood',
                      style: textBoldNunito(20),
                    ),
                    Text(
                      'Experiências únicas para você',
                      style: textNunito300(16),
                    )
                  ]),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: card3(
                    180,
                    160,
                    const Color.fromARGB(255, 251, 248, 255),
                    "Descontos de até 10 reais",
                    "Em todos os restaurantes",
                    "assets/cupom.png"),
              ),
              card3(
                  180,
                  160,
                  const Color.fromARGB(255, 251, 248, 255),
                  "Entregas grátis ilimitadas",
                  "Em restaurantes selecionados",
                  "assets/vespa.png")
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Pra você que gosta de cupom',
              style: textBoldNunito(20),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: card3(
                    180,
                    160,
                    const Color.fromARGB(255, 251, 248, 255),
                    "A partir de 40 reais em mercado",
                    "Pra usar em lojas selecionadas",
                    "assets/cupom.png"),
              ),
              card3(
                  180,
                  160,
                  const Color.fromARGB(255, 251, 248, 255),
                  "A partir de 30 reais em mercado",
                  "Pra usar em lojas selecionadas",
                  "assets/cupom.png")
            ],
          ),
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mercados próximos a você',
                    style: textBoldNunito(20),
                  ),
                  Text(
                    'Ver Mais >',
                    style: textNunitoRedBold(16),
                  )
                ],
              )),
              Divider(),
          loja('assets/atacadao.png', 'Atacadão Osasco Vila Yolanda', '4,3',
              'A partir de 2h 20m'),
          const Divider(),
          loja('assets/americanas.png', 'Americanas Osasco Centro', '4,5', 'A partir de 1h 12m')
        ],
      ),
    );
  }
}
