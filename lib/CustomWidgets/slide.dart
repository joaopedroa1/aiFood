import 'dart:async';

import 'package:flutter/material.dart';

class Slide extends StatefulWidget {
  const Slide({super.key});

  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  //obj que define o controle das páginas
  PageController pageController = PageController();
  List<double>progresso = [0.0,0.0,0.0, 0.0];
  int qtdPaginas = 4;
  int pagAtual = 0;
  @override
  void initState() {
    super.initState();
    nextPage();
  }
  //método para mudar de página periodicamente
  nextPage(){
    Timer.periodic(Duration(seconds: 5), (timer){
      int proximaPagina = pagAtual +1;
      if (proximaPagina >=qtdPaginas){
        proximaPagina = 0;
      }
        pageController.animateToPage(proximaPagina, duration: Duration(milliseconds: 300), curve: Curves.linear).then((_){
          setState(() {
            pagAtual = proximaPagina;
            reset();
          });
        });
    });
  }
    //iniciar o progresso
    void iniciarProgresso(){
      Timer.periodic(Duration(milliseconds: 50), (timer){
        setState(() {
          if(progresso[pagAtual]<1){
            progresso[pagAtual]+= 0.02;
          } else {
            timer.cancel();
          }
        });
      });
    }
    void reset(){
      for(int i =0; i< qtdPaginas; i++){
        progresso[i]= 0.0;
      }
      iniciarProgresso();
    }

    //método para criar o indicator
    List<Widget> buildIndicator(){
      List<Widget> lista = [];
      for(int i = 0; i<qtdPaginas; i++){
        lista.add(Container(
          width: 60,
          height: 5,
          margin: const EdgeInsets.all(8),
          child: LinearProgressIndicator(
            borderRadius: BorderRadius.circular(8),
            value: progresso[i],
            backgroundColor: Colors.grey[200],
            valueColor: AlwaysStoppedAnimation<Color>(pagAtual == i? Colors.blue : Colors.grey),
          ),
        ));
      }
      return lista;
    }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8)
      ),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          PageView(
        controller: pageController,
        children: [Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(image: AssetImage('assets/sanduiche.gif'))),
          ),
          Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(image: AssetImage('assets/pizza.gif'))),
          ),
          Container(
          width: double.infinity,
          
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(image: AssetImage('assets/massa.gif'))), 
          ),
          Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
             image: DecorationImage(image: AssetImage('assets/carne.gif')))
          ),
            ],
          ),
          Padding(padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: buildIndicator(),
          ),)
        ],
      ),
    );
  }
}