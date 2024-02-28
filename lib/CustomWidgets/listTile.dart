
import 'package:aifood/CustomWidgets/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget listTile(IconData iconLeading,String title, String subtitle){
  return ListTile(
    onTap:(){},
  leading: Icon(iconLeading),
  title: Text(title, style: textBoldNunito(16),),
  subtitle: Text(subtitle, style: textNunito300(14),),
  trailing:const Icon(Icons.arrow_right)

  );
}