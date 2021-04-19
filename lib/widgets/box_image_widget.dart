import 'package:flutter/material.dart';

class BoxImageWidget extends StatelessWidget {
  final String _image;
  final bool _value;
  
  BoxImageWidget(this._image, this._value);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75.0,
      height: 75.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: _value ? Color(0xff7380f2) : Color(0xfff9f9f9),
        boxShadow: [
          BoxShadow(
            color: const Color(0x0f000000),
            offset: Offset(0, 3),
            blurRadius: 20,
          ),
        ],
      ),
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage(_image),
      ),
    );
  }
}
