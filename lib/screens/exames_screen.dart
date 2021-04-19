import 'package:arboviroses/models/exames_class.dart';
import 'package:arboviroses/widgets/gotasangue_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:provider/provider.dart';

class ExamesScreen extends StatefulWidget {
  @override
  _ExamesScreenState createState() => _ExamesScreenState();
}

class _ExamesScreenState extends State<ExamesScreen> {
  bool _selected1 = false;
  bool _selected2 = false;
  bool _selected3 = false;

  bool _selected4 = false;
  bool _selected5 = false;
  bool _selected6 = false;

  bool _selected7 = false;
  bool _selected8 = false;
  bool _selected9 = false;

  bool _selected10 = false;
  bool _selected11 = false;
  bool _selected12 = false;

  bool _selected13 = false;
  bool _selected14 = false;
  bool _selected15 = false;

  bool _selected16 = false;
  bool _selected17 = false;
  bool _selected18 = false;

  bool _selected19 = false;
  bool _selected20 = false;
  bool _selected21 = false;

  bool _selected22 = false;
  bool _selected23 = false;
  bool _selected24 = false;

  bool _selected25 = false;
  bool _selected26 = false;
  bool _selected27 = false;

  bool _selected28 = false;
  bool _selected29 = false;
  bool _selected30 = false;

  @override
  Widget build(BuildContext context) {
    ExamesClass obj = Provider.of(context, listen: false);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 10),
            margin: EdgeInsets.only(left: 10, right: 10),
            width: double.infinity,
            child: Text(
              'Prova do laço positivo?',
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
          SizedBox(height: 15),
          Row(
           // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 10),
              Container(
                child: LiteRollingSwitch(
                  value: false,
                  textOn: "Sim",
                  textOff: "Não",
                  colorOn: const Color(0xff7380f2),
                  colorOff: const Color(0xff7380f2),
                  iconOn: Icons.alarm_on,
                  iconOff: Icons.alarm_off,
                  textSize: 18.0,
                  onChanged: (bool position) {
                    Map<String, int> laco = {"laco": position ? 1 : 0};
                    obj.newFunction(laco);
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            width: double.infinity,
            child: Text(
              'Exames de Sangue',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 26,
                color: const Color(0xff3a3a3a),
                fontWeight: FontWeight.w600,
                height: 0.9615384615384616,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 15),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                width: double.infinity,
                child: Text(
                  'Hemácias',
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
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                //  SizedBox(height: 5, width: 5,),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected1 = !_selected1;
                            if (_selected1) {
                              Map<String, int> hemacias1 = {"hemacias1": 1};
                              Map<String, int> hemacias2 = {"hemacias2": 0};
                              Map<String, int> hemacias3 = {"hemacias3": 0};
                              obj.newFunction(hemacias1);
                              obj.newFunction(hemacias2);
                              obj.newFunction(hemacias3);
                              _selected2 = false;
                              _selected3 = false;
                            }
                          },
                        );
                      },
                      child: GotaSangueWidget(
                        'Menor igual a 3,9 mm³',
                        _selected1,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected2 = !_selected2;
                            if (_selected2) {
                              Map<String, int> hemacias1 = {"hemacias1": 0};
                              Map<String, int> hemacias2 = {"hemacias2": 1};
                              Map<String, int> hemacias3 = {"hemacias3": 0};
                              obj.newFunction(hemacias1);
                              obj.newFunction(hemacias2);
                              obj.newFunction(hemacias3);
                              _selected1 = false;
                              _selected3 = false;
                            }
                          },
                        );
                      },
                      child: GotaSangueWidget(
                        'Entre 3,9 e 5,0 mm³',
                        _selected2,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected3 = !_selected3;
                            if (_selected3) {
                              Map<String, int> hemacias1 = {"hemacias1": 0};
                              Map<String, int> hemacias2 = {"hemacias2": 0};
                              Map<String, int> hemacias3 = {"hemacias3": 1};
                              obj.newFunction(hemacias1);
                              obj.newFunction(hemacias2);
                              obj.newFunction(hemacias3);
                              _selected1 = false;
                              _selected2 = false;
                            }
                          },
                        );
                      },
                      child: GotaSangueWidget(
                        'Maior que 5,0 mm³',
                        _selected3,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                width: double.infinity,
                child: Text(
                  'Hemoglobina',
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
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(
                            () {
                              _selected4 = !_selected4;
                              if (_selected4) {
                                Map<String, int> hemoglobina1 = {
                                  "hemoglobina1": 1
                                };
                                Map<String, int> hemoglobina2 = {
                                  "hemoglobina2": 0
                                };
                                Map<String, int> hemoglobina3 = {
                                  "hemoglobina3": 0
                                };
                                obj.newFunction(hemoglobina1);
                                obj.newFunction(hemoglobina2);
                                obj.newFunction(hemoglobina3);
                                _selected5 = false;
                                _selected6 = false;
                              }
                            },
                          );
                        },
                        child: GotaSangueWidget(
                          'Maior igual a 14,0 g/dL',
                          _selected4,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected5 = !_selected5;
                            if (_selected5) {
                              Map<String, int> hemoglobina1 = {"hemoglobina1": 0};
                              Map<String, int> hemoglobina2 = {"hemoglobina2": 1};
                              Map<String, int> hemoglobina3 = {"hemoglobina3": 0};
                              obj.newFunction(hemoglobina1);
                              obj.newFunction(hemoglobina2);
                              obj.newFunction(hemoglobina3);
                              _selected4 = false;
                              _selected6 = false;
                            }
                          },
                        );
                      },
                      child: GotaSangueWidget(
                        'Entre 14,0 e 18,0 g/dL',
                        _selected5,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected6 = !_selected6;
                            if (_selected6) {
                              Map<String, int> hemoglobina1 = {"hemoglobina1": 0};
                              Map<String, int> hemoglobina2 = {"hemoglobina2": 0};
                              Map<String, int> hemoglobina3 = {"hemoglobina3": 1};
                              obj.newFunction(hemoglobina1);
                              obj.newFunction(hemoglobina2);
                              obj.newFunction(hemoglobina3);
                              _selected4 = false;
                              _selected5 = false;
                            }
                          },
                        );
                      },
                      child: GotaSangueWidget(
                        'Maior que 8,0 g/dL',
                        _selected6,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                width: double.infinity,
                child: Text(
                  'Hematócrito',
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
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected7 = !_selected7;
                            if (_selected7) {
                              Map<String, int> hematocrito1 = {"hematocrito1": 1};
                              Map<String, int> hematocrito2 = {"hematocrito2": 0};
                              Map<String, int> hematocrito3 = {"hematocrito3": 0};
                              obj.newFunction(hematocrito1);
                              obj.newFunction(hematocrito2);
                              obj.newFunction(hematocrito3);
                              _selected8 = false;
                              _selected9 = false;
                            }
                          },
                        );
                      },
                      child: GotaSangueWidget(
                        'Menor igual a 41%',
                        _selected7,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected8 = !_selected8;
                            if (_selected8) {
                              Map<String, int> hematocrito1 = {"hematocrito1": 0};
                              Map<String, int> hematocrito2 = {"hematocrito2": 1};
                              Map<String, int> hematocrito3 = {"hematocrito3": 0};
                              obj.newFunction(hematocrito1);
                              obj.newFunction(hematocrito2);
                              obj.newFunction(hematocrito3);
                              _selected7 = false;
                              _selected9 = false;
                            }
                          },
                        );
                      },
                      child: GotaSangueWidget(
                        'Entre 41% e 51%',
                        _selected8,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected9 = !_selected9;
                            if (_selected9) {
                              Map<String, int> hematocrito1 = {"hematocrito1": 0};
                              Map<String, int> hematocrito2 = {"hematocrito2": 0};
                              Map<String, int> hematocrito3 = {"hematocrito3": 1};
                              obj.newFunction(hematocrito1);
                              obj.newFunction(hematocrito2);
                              obj.newFunction(hematocrito3);
                              _selected7 = false;
                              _selected8 = false;
                            }
                          },
                        );
                      },
                      child: GotaSangueWidget(
                        'Maior que 51%',
                        _selected9,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                width: double.infinity,
                child: Text(
                  'Leucócitos',
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
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected10 = !_selected10;
                            if (_selected10) {
                              Map<String, int> leucocitos1 = {"leucocitos1": 1};
                              Map<String, int> leucocitos2 = {"leucocitos2": 0};
                              Map<String, int> leucocitos3 = {"leucocitos3": 0};
                              obj.newFunction(leucocitos1);
                              obj.newFunction(leucocitos2);
                              obj.newFunction(leucocitos3);
                              _selected11 = false;
                              _selected12 = false;
                            }
                          },
                        );
                      },
                      child: GotaSangueWidget(
                        'Menor igual a 4.500 mm³',
                        _selected10,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected11 = !_selected11;
                            if (_selected11) {
                              Map<String, int> leucocitos1 = {"leucocitos1": 0};
                              Map<String, int> leucocitos2 = {"leucocitos2": 1};
                              Map<String, int> leucocitos3 = {"leucocitos3": 0};
                              obj.newFunction(leucocitos1);
                              obj.newFunction(leucocitos2);
                              obj.newFunction(leucocitos3);
                              _selected10 = false;
                              _selected12 = false;
                            }
                          },
                        );
                      },
                      child: GotaSangueWidget(
                        'Entre 4.500 e 10.000 mm³',
                        _selected11,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected12 = !_selected12;
                            if (_selected12) {
                              Map<String, int> leucocitos1 = {"leucocitos1": 0};
                              Map<String, int> leucocitos2 = {"leucocitos2": 0};
                              Map<String, int> leucocitos3 = {"leucocitos3": 1};
                              obj.newFunction(leucocitos1);
                              obj.newFunction(leucocitos2);
                              obj.newFunction(leucocitos3);
                              _selected10 = false;
                              _selected11 = false;
                            }
                          },
                        );
                      },
                      child: GotaSangueWidget(
                        'Maior que 10.000 mm³',
                        _selected12,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                width: double.infinity,
                child: Text(
                  'Linfócitos',
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
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected13 = !_selected13;
                            if (_selected13) {
                              Map<String, int> linfocitos1 = {"linfocitos1": 1};
                              Map<String, int> linfocitos2 = {"linfocitos2": 0};
                              Map<String, int> linfocitos3 = {"linfocitos3": 0};
                              obj.newFunction(linfocitos1);
                              obj.newFunction(linfocitos2);
                              obj.newFunction(linfocitos3);
                              _selected14 = false;
                              _selected15 = false;
                            }
                          },
                        );
                      },
                      child: GotaSangueWidget(
                        'Menor igual a 900 mm³',
                        _selected13,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected14 = !_selected14;
                            if (_selected14) {
                              Map<String, int> linfocitos1 = {"linfocitos1": 0};
                              Map<String, int> linfocitos2 = {"linfocitos2": 1};
                              Map<String, int> linfocitos3 = {"linfocitos3": 0};
                              obj.newFunction(linfocitos1);
                              obj.newFunction(linfocitos2);
                              obj.newFunction(linfocitos3);
                              _selected13 = false;
                              _selected15 = false;
                            }
                          },
                        );
                      },
                      child: GotaSangueWidget(
                        'Entre 900 e 3.300 mm³',
                        _selected14,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected15 = !_selected15;
                            if (_selected15) {
                              Map<String, int> linfocitos1 = {"linfocitos1": 0};
                              Map<String, int> linfocitos2 = {"linfocitos2": 0};
                              Map<String, int> linfocitos3 = {"linfocitos3": 1};
                              obj.newFunction(linfocitos1);
                              obj.newFunction(linfocitos2);
                              obj.newFunction(linfocitos3);
                              _selected13 = false;
                              _selected14 = false;
                            }
                          },
                        );
                      },
                      child: GotaSangueWidget(
                        'Maior que 10.000 mm³',
                        _selected15,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                width: double.infinity,
                child: Text(
                  'Neutrófilo',
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
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected16 = !_selected16;
                            if (_selected16) {
                              Map<String, int> neutrofilos1 = {"neutrofilos1": 1};
                              Map<String, int> neutrofilos2 = {"neutrofilos2": 0};
                              Map<String, int> neutrofilos3 = {"neutrofilos3": 0};
                              obj.newFunction(neutrofilos1);
                              obj.newFunction(neutrofilos2);
                              obj.newFunction(neutrofilos3);
                              _selected17 = false;
                              _selected18 = false;
                            }
                          },
                        );
                      },
                      child: GotaSangueWidget(
                        'Menor igual a 1.500 mm³',
                        _selected16,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected17 = !_selected17;
                            if (_selected17) {
                              Map<String, int> neutrofilos1 = {"neutrofilos1": 0};
                              Map<String, int> neutrofilos2 = {"neutrofilos2": 1};
                              Map<String, int> neutrofilos3 = {"neutrofilos3": 0};
                              obj.newFunction(neutrofilos1);
                              obj.newFunction(neutrofilos2);
                              obj.newFunction(neutrofilos3);
                              _selected16 = false;
                              _selected18 = false;
                            }
                          },
                        );
                      },
                      child: GotaSangueWidget(
                        'Entre 1.500 e 7.000 mm³',
                        _selected17,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected18 = !_selected18;
                            if (_selected18) {
                              Map<String, int> neutrofilos1 = {"neutrofilos1": 0};
                              Map<String, int> neutrofilos2 = {"neutrofilos2": 0};
                              Map<String, int> neutrofilos3 = {"neutrofilos3": 1};
                              obj.newFunction(neutrofilos1);
                              obj.newFunction(neutrofilos2);
                              obj.newFunction(neutrofilos3);
                              _selected16 = false;
                              _selected17 = false;
                            }
                          },
                        );
                      },
                      child: GotaSangueWidget(
                        'Maior que 7.000 mm³',
                        _selected18,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                width: double.infinity,
                child: Text(
                  'Plaquetas',
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
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected19 = !_selected19;
                            if (_selected19) {
                              Map<String, int> plaqueta1 = {"plaqueta1": 1};
                              Map<String, int> plaqueta2 = {"plaqueta2": 0};
                              Map<String, int> plaqueta3 = {"plaqueta3": 0};
                              obj.newFunction(plaqueta1);
                              obj.newFunction(plaqueta2);
                              obj.newFunction(plaqueta3);
                              _selected20 = false;
                              _selected21 = false;
                            }
                          },
                        );
                      },
                      child: GotaSangueWidget(
                        'Menor igual a 150.000 mm³',
                        _selected19,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected20 = !_selected20;
                            if (_selected20) {
                              Map<String, int> plaqueta1 = {"plaqueta1": 0};
                              Map<String, int> plaqueta2 = {"plaqueta2": 1};
                              Map<String, int> plaqueta3 = {"plaqueta3": 0};
                              obj.newFunction(plaqueta1);
                              obj.newFunction(plaqueta2);
                              obj.newFunction(plaqueta3);
                              _selected19 = false;
                              _selected21 = false;
                            }
                          },
                        );
                      },
                      child: GotaSangueWidget(
                        'Entre 150 e 400.000 mm³',
                        _selected20,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected21 = !_selected21;
                            if (_selected21) {
                              Map<String, int> plaqueta1 = {"plaqueta1": 0};
                              Map<String, int> plaqueta2 = {"plaqueta2": 0};
                              Map<String, int> plaqueta3 = {"plaqueta3": 1};
                              obj.newFunction(plaqueta1);
                              obj.newFunction(plaqueta2);
                              obj.newFunction(plaqueta3);
                              _selected19 = false;
                              _selected20 = false;
                            }
                          },
                        );
                      },
                      child: GotaSangueWidget(
                        'Maior que 400.000 mm³',
                        _selected21,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                width: double.infinity,
                child: Text(
                  'Proteína Creativa (PCR)',
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
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected22 = !_selected22;
                            if (_selected22) {
                              Map<String, int> pcr1 = {"pcr1": 1};
                              Map<String, int> pcr2 = {"pcr2": 0};
                              Map<String, int> pcr3 = {"pcr3": 0};
                              obj.newFunction(pcr1);
                              obj.newFunction(pcr2);
                              obj.newFunction(pcr3);
                              _selected23 = false;
                              _selected24 = false;
                            }
                          },
                        );
                      },
                      child: GotaSangueWidget(
                        'Menor igual a 0,10 mg/dL',
                        _selected22,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected23 = !_selected23;
                            if (_selected23) {
                              Map<String, int> pcr1 = {"pcr1": 0};
                              Map<String, int> pcr2 = {"pcr2": 1};
                              Map<String, int> pcr3 = {"pcr3": 0};
                              obj.newFunction(pcr1);
                              obj.newFunction(pcr2);
                              obj.newFunction(pcr3);
                              _selected22 = false;
                              _selected24 = false;
                            }
                          },
                        );
                      },
                      child: GotaSangueWidget(
                        'Entre 0,10 e 0,30 mg/dL',
                        _selected23,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected24 = !_selected24;
                            if (_selected24) {
                              Map<String, int> pcr1 = {"pcr1": 0};
                              Map<String, int> pcr2 = {"pcr2": 0};
                              Map<String, int> pcr3 = {"pcr3": 1};
                              obj.newFunction(pcr1);
                              obj.newFunction(pcr2);
                              obj.newFunction(pcr3);
                              _selected22 = false;
                              _selected23 = false;
                            }
                          },
                        );
                      },
                      child: GotaSangueWidget(
                        'Maior que 0,30 mg/dL',
                        _selected24,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                width: double.infinity,
                child: Text(
                  'Enzimas Hepáticas (TGO/AST)',
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
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected25 = !_selected25;
                            if (_selected25) {
                              Map<String, int> tgo1 = {"tgo1": 1};
                              Map<String, int> tgo2 = {"tgo2": 0};
                              Map<String, int> tgo3 = {"tgo3": 0};
                              obj.newFunction(tgo1);
                              obj.newFunction(tgo2);
                              obj.newFunction(tgo3);
                              _selected26 = false;
                              _selected27 = false;
                            }
                          },
                        );
                      },
                      child: GotaSangueWidget(
                        'Menor igual a 32,0 U/L',
                        _selected25,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected26 = !_selected26;
                            if (_selected26) {
                              Map<String, int> tgo1 = {"tgo1": 0};
                              Map<String, int> tgo2 = {"tgo2": 1};
                              Map<String, int> tgo3 = {"tgo3": 0};
                              obj.newFunction(tgo1);
                              obj.newFunction(tgo2);
                              obj.newFunction(tgo3);
                              _selected25 = false;
                              _selected27 = false;
                            }
                          },
                        );
                      },
                      child: GotaSangueWidget(
                        'Entre 32,0 e 40,0 U/L',
                        _selected26,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected27 = !_selected27;
                            if (_selected27) {
                              Map<String, int> tgo1 = {"tgo1": 0};
                              Map<String, int> tgo2 = {"tgo2": 0};
                              Map<String, int> tgo3 = {"tgo3": 1};
                              obj.newFunction(tgo1);
                              obj.newFunction(tgo2);
                              obj.newFunction(tgo3);
                              _selected25 = false;
                              _selected26 = false;
                            }
                          },
                        );
                      },
                      child: GotaSangueWidget(
                        'Maior que 40,0 U/L',
                        _selected27,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                width: double.infinity,
                child: Text(
                  'Enzimas Hepáticas (TGP/ALT)',
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
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected28 = !_selected28;
                            if (_selected28) {
                              Map<String, int> tgp1 = {"tgp1": 1};
                              Map<String, int> tgp2 = {"tgp2": 0};
                              Map<String, int> tgp3 = {"tgp3": 0};
                              obj.newFunction(tgp1);
                              obj.newFunction(tgp2);
                              obj.newFunction(tgp3);
                              _selected29 = false;
                              _selected30 = false;
                            }
                          },
                        );
                      },
                      child: GotaSangueWidget(
                        'Menor igual a 33,0 U/L',
                        _selected28,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected29 = !_selected29;
                            if (_selected29) {
                              Map<String, int> tgp1 = {"tgp1": 0};
                              Map<String, int> tgp2 = {"tgp2": 1};
                              Map<String, int> tgp3 = {"tgp3": 0};
                              obj.newFunction(tgp1);
                              obj.newFunction(tgp2);
                              obj.newFunction(tgp3);
                              _selected28 = false;
                              _selected30 = false;
                            }
                          },
                        );
                      },
                      child: GotaSangueWidget(
                        'Entre 33,0 e 41,0 U/L',
                        _selected29,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            _selected30 = !_selected30;
                            if (_selected30) {
                              Map<String, int> tgp1 = {"tgp1": 0};
                              Map<String, int> tgp2 = {"tgp2": 0};
                              Map<String, int> tgp3 = {"tgp3": 1};
                              obj.newFunction(tgp1);
                              obj.newFunction(tgp2);
                              obj.newFunction(tgp3);
                              _selected28 = false;
                              _selected29 = false;
                            }
                          },
                        );
                      },
                      child: GotaSangueWidget(
                        'Maior que 41,0 U/L',
                        _selected30,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          //TraillerWidget(),
        ],
      ),
    );
  }
}
