import 'package:aifood/CustomWidgets/cardPdn.dart';
import 'package:aifood/CustomWidgets/style.dart';
import 'package:flutter/material.dart';

class Pedidos extends StatelessWidget {
  const Pedidos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Meus pedidos',
          style: textBoldNunito(20),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              pdn(
                  400,
                  180,
                  const Color.fromARGB(255, 255, 253, 253),
                  '  Pedido Concluído N°7243',
                  'Piratas Dog - Unidade Osasco',
                  '1 HotDog + 2 Batatas Fritas +1 Lata Pepsi',
                  'Detalhes > ',
                  'Repetir > '),
              pdn(
                  400,
                  180,
                  const Color.fromARGB(255, 255, 253, 253),
                  '  Pedido Concluído N° 3245',
                  'Burguer King - Unidade Osasco',
                  '1 Mega Stacker, 2 Batatas Fritas + 1 lata Soda',
                  'Detalhes >',
                  'Repetir >'),
            ],
          )
        ],
      ),
    );
  }
}
