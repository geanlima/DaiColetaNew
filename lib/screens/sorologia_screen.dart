import 'package:arboviroses/models/sorologia_class.dart';
import 'package:arboviroses/widgets/box_text_pf_widget.dart';
import 'package:arboviroses/widgets/box_text_widget.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class SorologiaScreen extends StatefulWidget {
  @override
  _SorologiaScreenState createState() => _SorologiaScreenState();
}

class _SorologiaScreenState extends State<SorologiaScreen> {
  bool _selected1 = false;
  bool _selected2 = false;
  bool _selected3 = false;

  bool _selected4 = false;
  bool _selected5 = false;

  bool _selected6 = false;
  bool _selected7 = false;

  int segErro = 5;

  bool validador() {
    int sel1 = _selected1 == true ? 1 : 0;
    int sel2 = _selected2 == true ? 1 : 0;
    int sel3 = _selected3 == true ? 1 : 0;

    int total = sel1 + sel2 + sel3;

    return total == 3 ? false : true;
  }

  TextStyle styleErro() {
    return TextStyle(
      fontSize: 20,
      color: Colors.red,
      fontWeight: FontWeight.bold,
    );
  }

  void msgValidador() {
    Scaffold.of(context).hideCurrentSnackBar();
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "Favor selecionar somente 2 opções de sorologia para Dengue.",
          textAlign: TextAlign.center,
          style: styleErro(),
        ),
        duration: Duration(seconds: segErro),
        backgroundColor: Colors.white,
        onVisible: () {
          setState(() {
            //_status = true;
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SorologiaClass obj = Provider.of(context, listen: false);
    return Container(
      decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
      child: Center(
        child: Container(
          width: 450,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                width: double.infinity,
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  'Dengue',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    color: const Color(0xff3a3a3a),
                    fontWeight: FontWeight.w600,
                    height: 1.3888888888888888,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                width: double.infinity,
                padding: EdgeInsets.only(bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected1 = !_selected1;
                            if (_selected1) {                          
                              if (validador()) {
                                Map<String, int> map = {"dengueigm": 1};
                                obj.newFunction(map);                           
                              }else{
                                Map<String, int> map = {"dengueigm": 1};
                                obj.newFunction(map); 
                                 msgValidador();
                              }
                            }else{
                              Map<String, int> map = {"dengueigm": 0};
                              obj.newFunction(map); 
                            }
                          },
                        );
                      },
                      child: BoxTextpfWidget(
                        'igM Positivo?',
                        80,
                        _selected1,
                        sizeFont: 12,
                      ),
                    ),
                    SizedBox(width: 3.5),
                    InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected2 = !_selected2;
                            if (_selected2) {
                              if (validador()) {                            
                                Map<String, int> map = {"dengueigg": 1};
                                obj.newFunction(map);
                              } else{
                                Map<String, int> map = {"dengueigg": 1};
                                obj.newFunction(map);
                                msgValidador();
                              }
                            }else{
                              Map<String, int> map = {"dengueigg": 0};
                              obj.newFunction(map); 
                            }
                          },
                        );
                      },
                      child: BoxTextpfWidget(
                        'igG Positivo?',
                        80,
                        _selected2,
                        sizeFont: 12,
                      ),
                    ),
                    SizedBox(width: 3.5),
                    InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected3 = !_selected3;
                            if (_selected3) {
                              if (validador()) {
                                Map<String, int> map = {"denguens1": 1};
                                obj.newFunction(map);
                              } else {
                                Map<String, int> map = {"denguens1": 1};
                                obj.newFunction(map);
                                msgValidador();
                              }
                            } else{
                              Map<String, int> map = {"denguens1": 0};
                              obj.newFunction(map); 
                            }
                          },
                        );
                      },
                      child: BoxTextpfWidget(
                        'NS1 Positivo?',
                        80,
                        _selected3,
                        sizeFont: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                width: double.infinity,
                padding: EdgeInsets.only(bottom: 15),
                child: Text(
                  'Zika',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    color: const Color(0xff3a3a3a),
                    fontWeight: FontWeight.w600,
                    height: 1.3888888888888888,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                width: double.infinity,
                padding: EdgeInsets.only(bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(
                          () {
                            Map<String, int> map;
                            _selected4 = !_selected4;     
                            if (_selected4) {    
                              map = {"zika_igm": 1};                                         
                            } else {
                              map = {"zika_igm": 0};                          
                            } 
                            obj.newFunction(map);               
                          },
                        );
                      },
                      child: BoxTextpfWidget(
                        'igM Positivo?',
                        80,
                        _selected4,
                        sizeFont: 12,
                      ),
                    ),
                    SizedBox(width: 15),
                    InkWell(
                      onTap: () {
                        setState(
                          () {
                            Map<String, int> map;
                            _selected5 = !_selected5;
                            if (_selected5) {    
                              map = {"zika_igg": 1};                                         
                            } else {
                              map = {"zika_igg": 0};                          
                            } 
                            obj.newFunction(map);               
                          },
                        );
                      },
                      child: BoxTextpfWidget(
                        'igG Positivo?',
                        80,
                        _selected5,
                        sizeFont: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                width: double.infinity,
                padding: EdgeInsets.only(bottom: 15),
                child: Text(
                  'Chikungunya',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    color: const Color(0xff3a3a3a),
                    fontWeight: FontWeight.w600,
                    height: 1.3888888888888888,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                width: double.infinity,
                padding: EdgeInsets.only(bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(
                          () {
                            Map<String, int> map;
                            _selected6 = !_selected6;  
                            if (_selected6) {    
                              map = {"chik_igm": 1};                                         
                            } else {
                              map = {"chik_igm": 0};                          
                            } 
                            obj.newFunction(map);                        
                          },
                        );
                      },
                      child: BoxTextpfWidget(
                        'igM Positivo?',
                        80,
                        _selected6,
                      ),
                    ),
                    SizedBox(width: 15),
                    InkWell(
                      onTap: () {
                        setState(
                          () {
                            Map<String, int> map;
                            _selected7 = !_selected7;
                            if (_selected7) {    
                              map = {"chik_igg": 1};                                         
                            } else {
                              map = {"chik_igg": 0};                          
                            } 
                            obj.newFunction(map);   
                          },
                        );
                      },
                      child: BoxTextpfWidget(
                        'igG Positivo?',
                        80,
                        _selected7,
                        sizeFont: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
