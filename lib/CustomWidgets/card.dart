import 'package:aifood/CustomWidgets/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget card(
    double largura, double altura, Color? color, String texto, String img) {
  return Container(
    margin: EdgeInsets.fromLTRB(4, 8, 0, 0),
    width: largura,
    height: altura,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
    ),
    child: Card(
      color: color,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(texto, style: textNunitoWhiteBold(14)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              img,
              width: 64,
              height: 64,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget card2(
    double largura, double altura, Color? color, String texto, String img) {
  return Container(
    margin: EdgeInsets.fromLTRB(4, 8, 0, 0),
    width: largura,
    height: altura,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
    ),
    child: Card(
      color: color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              img,
              width: 48,
              height: 48,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(texto, style: textNunito300(14)),
          ),
        ],
      ),
    ),
  );
}

Widget card3(double largura, double altura, Color? color, String texto,
    String subTexto, String img) {
  return Container(
      width: largura,
      height: altura,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Card(
        color: color,
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              img,
              width: 48,
              height: 48,
            ),
            Text(
              texto,
              style: textBoldNunito(14),
              textAlign: TextAlign.center,
            ),
            Text(
              subTexto,
              style: textNunito300(13),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ));
}
