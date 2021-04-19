import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BugWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(MediaQuery.of(context).size.width * 0.7, 26.0),
      child: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Container(
          width: 81.0,
          height: 81.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/bug.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
