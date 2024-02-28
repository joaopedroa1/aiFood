import 'dart:html';

import 'package:aifood/CustomWidgets/circleAvatar.dart';
import 'package:flutter/material.dart';

Container loja(
    String img, String nomeRestaurante, String avaliacao, String tempo) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          circleAvatar(img),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(nomeRestaurante),
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 14,
                            color: const Color.fromARGB(255, 201, 182, 16),
                          ),
                          Text(avaliacao),
                          Text(tempo)
                        ],
                      ),
                    )
                  ]),
            ),
          )
        ],
      ),
    ),
  );
}
