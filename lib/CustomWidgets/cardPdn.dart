import 'package:aifood/CustomWidgets/style.dart';
import 'package:flutter/material.dart';

Widget pdn(
  double extensao,
  double altitude,
  Color? color,
  String texto,
  String titulo,
  String textoDois,
  String detalhes,
  String pedirDnv,
) {
  return Container(
    width: extensao,
    height: altitude,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
    ),
    child: (Card(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titulo,
              style: textBoldNunito(16),
            ),
            Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.check_circle,
                  size: 18,
                  color: Colors.green,
                ),
                Text(
                  texto,
                  style: textNunito300(14),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                textoDois,
                style: text300(13),
              ),
            ),
            Divider(
              color: Colors.red,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  detalhes,
                  style: textNunitoRedBold(18),
                ),
                Container(
                  width: 1,
                  height: 40,
                  color: Colors.red,
                ),
                Text(
                  pedirDnv,
                  style: textNunitoRedBold(18),
                ),
              ],
            )
          ],
        ),
      ),
    )),
  );
}
