import 'package:arboviroses/models/sintomas_class.dart';
import 'package:arboviroses/widgets/box_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SingleWidget extends StatefulWidget {
  final String label;
  final String campo;
  final Function(bool) function;

  SingleWidget({this.label, this.function, this.campo});

  @override
  _SingleWidgetState createState() => _SingleWidgetState();
}

class _SingleWidgetState extends State<SingleWidget> {
  bool _selected1 = false;
  
  bool _selectd1() {
    _selected1 = !_selected1;
    return widget.function(_selected1);
  }

  @override
  Widget build(BuildContext context) {
    SintomasClass obj  = Provider.of(context, listen: false);

    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: InkWell(
        onTap: () {
          setState(() {
            _selected1 = _selectd1();
            Map<String, int> map;
            if (_selected1){
              map = {widget.campo: 1};              
            } else{
              map = {widget.campo: 0};
            }
            obj.newFunction(map);            
          });
        },
        child: BoxTextWidget(
          widget.label,
          80,
          _selected1,
          sizeFont: 12,
        ),
      ),
    );
  }
}
