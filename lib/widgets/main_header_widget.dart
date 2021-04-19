import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class MainHeaderWidget extends StatelessWidget {
  
  final String header;

  MainHeaderWidget(
    this.header,
  );

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(30.0, 107.0),
      child: SizedBox(
        width: 300.0,
        height: 36.0,
        child: Stack(
          children: <Widget>[
            Pinned.fromSize(
              bounds: Rect.fromLTWH(0.0, 0.0, 203.0, 36.0),
              size: Size(203.0, 36.0),
              pinLeft: true,
              pinRight: true,
              pinTop: true,
              pinBottom: true,
              child: Text(
                header,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xfff9f9f9),
                  height: 0.9615384615384616,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
