import 'package:flutter/material.dart';

class dadosCard{
  static List<Map<String, dynamic>> listaDados = [{
    "largura": 180,
    "altura":80,
    "cor":Colors.red,
    "texto": "Mercado",
    "imagem":"assets/mercado.png"
  },{
    "largura": 182,
    "altura":80,
    "cor":Colors.orange,
    "texto": "Farmácia",
    "imagem":"assets/farmacia.png"
  },
  ];
  minhaLista(){
  List<Map<String, dynamic>> infoCards =[];
  return listaDados;
  }
}