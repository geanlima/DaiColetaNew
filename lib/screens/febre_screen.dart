import 'package:arboviroses/models/febre_class.dart';
import 'package:arboviroses/widgets/box_text_pf_widget.dart';
import 'package:arboviroses/widgets/box_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FebreScreen extends StatefulWidget {
  @override
  _FebreScreenState createState() => _FebreScreenState();
}

class _FebreScreenState extends State<FebreScreen> {
  bool _selected1 = false;
  bool _selected2 = false;
  bool _selected3 = false;

  bool _selected4 = false;
  bool _selected5 = false;
  bool _selected6 = false;

  bool _selected7 = false;
  bool _selected8 = false;

  @override
  Widget build(BuildContext context) {
    FebreClass obj = Provider.of(context, listen: false);
    
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: <Widget>[
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 1, right: 1),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(
                              () {
                                _selected1 = !_selected1;
                                if (_selected1) {
                                  Map<String, int> temperatura1 = {"temperatura1": 1};
                                  Map<String, int> temperatura2 = {"temperatura2": 0};
                                  Map<String, int> temperatura3 = {"temperatura3": 0};
                                  Map<String, int> temperaturanao = {"temperaturanao": 0};
                                  Map<String, int> febreausente = {"febreausente": 0};
                                  obj.newFunction(temperatura1);
                                  obj.newFunction(temperatura2);
                                  obj.newFunction(temperatura3);  
                                  obj.newFunction(temperaturanao);  
                                  obj.newFunction(febreausente);
                                  _selected2 = false;
                                  _selected3 = false;
                                  _selected7 = false;
                                  _selected8 = false;
                                }
                              },
                            );
                          },
                          child: BoxTextpfWidget(
                            'Menor ou igual a 38,5°C',
                            80,
                            _selected1,
                            sizeFont: 12,
                          ),
                        ),
                        SizedBox(width: 5),
                        InkWell(
                          onTap: () {
                            setState(
                              () {
                                _selected2 = !_selected2;
                                if (_selected2) {
                                  Map<String, int> temperatura1 = {"temperatura1": 0};
                                  Map<String, int> temperatura2 = {"temperatura2": 1};
                                  Map<String, int> temperatura3 = {"temperatura3": 0};
                                  Map<String, int> temperaturanao = {"temperaturanao": 0};
                                  Map<String, int> febreausente = {"febreausente": 0};
                                  obj.newFunction(temperatura1);
                                  obj.newFunction(temperatura2);
                                  obj.newFunction(temperatura3);  
                                  obj.newFunction(temperaturanao);  
                                  obj.newFunction(febreausente);
                                  _selected1 = false;
                                  _selected3 = false;
                                  _selected7 = false;
                                  _selected8 = false;
                                }
                              },
                            );
                          },
                          child: BoxTextpfWidget(
                            'Entre 38,5 e 39°C',
                            80,
                            _selected2,
                            sizeFont: 12,
                          ),
                        ),
                        SizedBox(width: 5),
                        InkWell(
                          onTap: () {
                            setState(
                              () {
                                _selected3 = !_selected3;
                                if (_selected3) {
                                  Map<String, int> temperatura1 = {"temperatura1": 0};
                                  Map<String, int> temperatura2 = {"temperatura2": 0};
                                  Map<String, int> temperatura3 = {"temperatura3": 1};
                                  Map<String, int> temperaturanao = {"temperaturanao": 0};
                                  Map<String, int> febreausente = {"febreausente": 0};
                                  obj.newFunction(temperatura1);
                                  obj.newFunction(temperatura2);
                                  obj.newFunction(temperatura3);  
                                  obj.newFunction(temperaturanao);  
                                  obj.newFunction(febreausente);
                                  _selected1 = false;
                                  _selected2 = false;
                                  _selected7 = false;
                                  _selected8 = false;
                                }
                              },
                            );
                          },
                          child: BoxTextpfWidget(
                            'Entre 39 e 40°C',
                            80,
                            _selected3,
                            sizeFont: 12,
                          ),
                        ),
                        SizedBox(width: 5),
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(
                              () {
                                _selected4 = !_selected4;
                                if (_selected4) {
                                  Map<String, int> duracao1 = {"duracao1": 1};
                                  Map<String, int> duracao2 = {"duracao2": 0};
                                  Map<String, int> duracao3 = {"duracao3": 0};
                                  Map<String, int> temperaturanao = {"temperaturanao": 0};
                                  Map<String, int> febreausente = {"febreausente": 0};
                                  obj.newFunction(duracao1);
                                  obj.newFunction(duracao2);
                                  obj.newFunction(duracao3);  
                                  obj.newFunction(temperaturanao);  
                                  obj.newFunction(febreausente);
                                  _selected5 = false;
                                  _selected6 = false;
                                  _selected7 = false;
                                  _selected8 = false;
                                }
                              },
                            );
                          },
                          child: BoxTextpfWidget(
                            'Duração de 1 a 2 dias',
                            80,
                            _selected4,
                            sizeFont: 12,
                          ),
                        ),
                        SizedBox(width: 5),
                        InkWell(
                          onTap: () {
                            setState(
                              () {
                                _selected5 = !_selected5;
                                if (_selected5) {
                                  Map<String, int> duracao1 = {"duracao1": 0};
                                  Map<String, int> duracao2 = {"duracao2": 1};
                                  Map<String, int> duracao3 = {"duracao3": 0};
                                  Map<String, int> temperaturanao = {"temperaturanao": 0};
                                  Map<String, int> febreausente = {"febreausente": 0};
                                  obj.newFunction(duracao1);
                                  obj.newFunction(duracao2);
                                  obj.newFunction(duracao3);  
                                  obj.newFunction(temperaturanao);  
                                  obj.newFunction(febreausente);
                                  _selected4 = false;
                                  _selected6 = false;
                                  _selected7 = false;
                                  _selected8 = false;
                                }
                              },
                            );
                          },
                          child: BoxTextpfWidget(
                            'Duração de 2 a 3 dias',
                            80,
                            _selected5,
                            sizeFont: 12,
                          ),
                        ),
                        SizedBox(width: 5),
                        InkWell(
                          onTap: () {
                            setState(
                              () {
                                _selected6 = !_selected6;
                                if (_selected6) {
                                  Map<String, int> duracao1 = {"duracao1": 0};
                                  Map<String, int> duracao2 = {"duracao2": 0};
                                  Map<String, int> duracao3 = {"duracao3": 1};
                                  Map<String, int> temperaturanao = {"temperaturanao": 0};
                                  Map<String, int> febreausente = {"febreausente": 0};
                                  obj.newFunction(duracao1);
                                  obj.newFunction(duracao2);
                                  obj.newFunction(duracao3);  
                                  obj.newFunction(temperaturanao);  
                                  obj.newFunction(febreausente);
                                  _selected4 = false;
                                  _selected5 = false;
                                  _selected7 = false;
                                  _selected8 = false;
                                }
                              },
                            );
                          },
                          child: BoxTextpfWidget(
                            'Duração de 2 a 7 dias',
                            80,
                            _selected6,
                            sizeFont: 12,
                          ),
                        ),
                        SizedBox(width: 5),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,  
                        children: [
                          InkWell(
                            onTap: () {
                              setState(
                                () {
                                  _selected7 = !_selected7;
                                  if (_selected7) {
                                    Map<String, int> temperatura1 = {"temperatura1": 0};
                                    Map<String, int> temperatura2 = {"temperatura2": 0};
                                    Map<String, int> temperatura3 = {"temperatura3": 0};
                                    Map<String, int> duracao1 = {"duracao1": 0};
                                    Map<String, int> duracao2 = {"duracao2": 0};
                                    Map<String, int> duracao3 = {"duracao3": 0};
                                    Map<String, int> febreausente = {"febreausente": 1};
                                    Map<String, int> temperaturanao = {"temperaturanao": 0};                                  
                                    obj.newFunction(temperatura1);
                                    obj.newFunction(temperatura2);
                                    obj.newFunction(temperatura3);
                                    obj.newFunction(duracao1);
                                    obj.newFunction(duracao2);
                                    obj.newFunction(duracao3);  
                                    obj.newFunction(febreausente);
                                    obj.newFunction(temperaturanao);  
                                    
                                    _selected1 = false;
                                    _selected2 = false;
                                    _selected3 = false;
                                    _selected4 = false;
                                    _selected5 = false;
                                    _selected6 = false;
                                    _selected8 = false;
                                  }
                                },
                              );
                            },
                            child: BoxTextpfWidget(
                              'Ausente',
                              80,
                              _selected7,
                              sizeFont: 12,
                            ),
                          ),
                          SizedBox(width: 5),
                          InkWell(
                            onTap: () {
                              setState(
                                () {
                                  _selected8 = !_selected8;
                                  if (_selected8) {
                                    Map<String, int> temperatura1 = {"temperatura1": 0};
                                    Map<String, int> temperatura2 = {"temperatura2": 0};
                                    Map<String, int> temperatura3 = {"temperatura3": 0};
                                    Map<String, int> duracao1 = {"duracao1": 0};
                                    Map<String, int> duracao2 = {"duracao2": 0};
                                    Map<String, int> duracao3 = {"duracao3": 0};
                                    Map<String, int> febreausente = {"febreausente": 0};
                                    Map<String, int> temperaturanao = {"temperaturanao": 1};
                                    obj.newFunction(temperatura1);
                                    obj.newFunction(temperatura2);
                                    obj.newFunction(temperatura3);
                                    obj.newFunction(duracao1);
                                    obj.newFunction(duracao2);
                                    obj.newFunction(duracao3);  
                                    obj.newFunction(febreausente);
                                    obj.newFunction(temperaturanao);
                                    _selected1 = false;
                                    _selected2 = false;
                                    _selected3 = false;
                                    _selected4 = false;
                                    _selected5 = false;
                                    _selected6 = false;
                                    _selected7 = false;
                                  }
                                },
                              );
                            },
                            child: Container(
                              child: BoxTextpfWidget(
                                'Temperatura não informada',
                                80,
                                _selected8,
                                sizeFont: 12,
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
          //TraillerWidget(),
        ],
      ),
    );
  }
}
