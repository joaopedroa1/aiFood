

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//Estilo roboto negrito
TextStyle textBold(double tamanho){
  return GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: tamanho);
}

//Estilo roboto300
TextStyle text300(double tamanho){
  return GoogleFonts.roboto(fontWeight: FontWeight.w300, fontSize: tamanho);
}

//Cria um espaço na horizontal 
Widget espacoHorizontal(double espaco){
  return SizedBox(width: espaco,);
}


//Cria um espaço na vertical
Widget espacoVertical(double espaco){
  return SizedBox(height: espaco,);
}

//Estilo nunito300
TextStyle textNunito300(double tamanho){
  return GoogleFonts.nunitoSans(fontWeight: FontWeight.w300, fontSize: tamanho);
}

//Estilo roboto negrito
TextStyle textBoldNunito(double tamanho){
  return GoogleFonts.nunitoSans(fontWeight: FontWeight.w700, fontSize: tamanho);
}

TextStyle textNunitoWhiteBold(double tamanho){
  return GoogleFonts.nunitoSans(fontWeight: FontWeight.w700, fontSize: tamanho, color: Colors.white);
}

TextStyle textNunitoRedBold(double tamanho){
  return GoogleFonts.nunitoSans(fontWeight: FontWeight.w700, fontSize: tamanho, color: Colors.red);
}