import 'package:aifood/CustomWidgets/circleAvatar.dart';
import 'package:aifood/CustomWidgets/listTile.dart';
import 'package:aifood/CustomWidgets/style.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.qr_code)
        ],
      ),
        body: ListView(
          children: [
            Row(children: [
              circleAvatar('https://imagensfree.com.br/wp-content/uploads/2021/11/icone-ifood-preto-300x300.png'),
              Text('Kaian Dias', style:textBold(16),),
            ],
          ),
          const Divider(),
          listTile(Icons.message ,"Conversas", "Meu histórico de conversas"),
          const Divider(),
          listTile(Icons.notifications ,"Notificações", "Minha central de notificações"),
          const Divider(),
          listTile(Icons.payment ,"Pagamentos", "Meus saldos e cartões"),
          const Divider(),
          listTile(Icons.store ,"Assinaturas", "Minhas assinaturas"),
          const Divider(),
          listTile(Icons.loyalty ,"Clube AiFood", "Meus benefícios exclusivos"),
          const Divider(),
          listTile(Icons.local_offer ,"Cupons", "Meus cupons de desconto"),
          const Divider(),
          listTile(Icons.card_giftcard,"AiFood Card", "Minha área de compra e resgate"),
          const Divider(),
          listTile(Icons.loyalty ,"Fidelidade", "Minhas fidelidades"),
          const Divider(),
          listTile(Icons.favorite ,"Favoritos", "Meus locais favoritos"),
          const Divider(),
          listTile(Icons.explore ,"Descobrir", "Encontre novidades quentinhas"),
          const Divider(),
          listTile(Icons.location_on ,"Endereços", "Meus endereços de entrega"),
          const Divider(),
          listTile(Icons.account_circle ,"Dados da conta", "Minhas informações da conta"),
          const Divider(),
        ],
      ),
    );
  }
}