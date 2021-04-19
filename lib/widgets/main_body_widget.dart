import 'package:flutter/material.dart';

class MainBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  //  double larguratela = MediaQuery.of(context).size.width * 0.5; // MEU PARA TESTAR LARGURA TELA
    return Transform.translate(
      offset: Offset(0.0, 158.0),
      child: Container(
       // padding: EdgeInsets.symmetric(horizontal: 200, vertical: 50),
       // width: larguratela,
       // width: double.infinity,
      //  height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
          ),
         // borderRadius: BorderRadius.circular(50),
         // color: Colors.purple,
          color: const Color(0xffffffff),
        ),
      ),
    );
  }
}
