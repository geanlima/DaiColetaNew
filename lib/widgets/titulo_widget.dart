import 'package:flutter/material.dart';

class TituloWidget extends StatelessWidget {
  final String _titulo;
  TituloWidget(this._titulo);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      width: double.infinity,
      child: Text(
        _titulo,
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 20,
          color: const Color(0xff3a3a3a),
          fontWeight: FontWeight.w600,
          height: 1.3888888888888888,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
