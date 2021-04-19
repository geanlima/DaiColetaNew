import 'package:flutter/material.dart';

class BoxTextpfWidget extends StatelessWidget {

  final String label;
  final double size;
  final bool value;
  final double sizeFont;

  BoxTextpfWidget(
      this.label,
      this.size,
      this.value,
      {this.sizeFont,}
      );

  @override
  Widget build(BuildContext context) {
  //  MediaQueryData deviceInfo = MediaQuery.of(context);
    double alturatela = MediaQuery.of(context).size.height;

    return StreamBuilder<Object>(
        stream: null,
        builder: (context, snapshot) {
          return Container(
            //  width:  deviceInfo.size >= Size(500.0, 700.0) || deviceInfo.orientation == Orientation.landscape ? 90 : 80,
            height: 55.7,
            width: 81,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: value ? Color(0xff7380f2) : Color(0xfff9f9f9),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x0f000000),
                  offset: Offset(0, 3),
                  blurRadius: 20,
                ),
              ],
            ),
            child: Center(
              child: Text(
                label,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 13.9,
                   // fontSize: alturatela * 0.02,
                  color: value ? Color(0xfff9f9f9) : Color(0xff3a3a3a),
                  fontWeight: FontWeight.w600,
                  height: 1.3571428571428572,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          );
        }
    );
  }
}