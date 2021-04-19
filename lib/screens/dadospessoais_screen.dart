import 'package:arboviroses/models/paciente_class.dart';
import 'package:arboviroses/widgets/box_image_widget.dart';
import 'package:arboviroses/widgets/box_text_pf_widget.dart';
import 'package:arboviroses/widgets/titulo_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:provider/provider.dart';

class DadosPessoaisScreen extends StatefulWidget {
  @override
  _DadosPessoaisScreenState createState() => _DadosPessoaisScreenState();
}

class _DadosPessoaisScreenState extends State<DadosPessoaisScreen> {
  bool _valueMan = false;
  bool _valueWoman = false;

  bool _value016 = false;
  bool _value1760 = false;
  bool _value60 = false;

  bool prag = false;

  bool rulePregnant(bool valueM) {
    return !valueM;
  }

  TextStyle styleErro() {
    return TextStyle(
      fontSize: 20,
      color: Colors.red,
      fontWeight: FontWeight.bold,
    );
  }

  @override
  Widget build(BuildContext context) {
    PacienteClass obj = Provider.of(context, listen: false);
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Container(
          margin: EdgeInsets.only(left: 10, right: 10), /// AQUI
          width: double.infinity,  /// AQUI
          //width: 500,  --- AQUIIIIII
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TituloWidget('Qual seu sexo?'),
                Column(
                   children: [
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 10),
                        Container(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                int gest = prag ? 1 : 0;
                                _valueMan = !_valueMan;
//                                if (prag && _valueMan) {
//                                  Scaffold.of(context).hideCurrentSnackBar();
//                                  Scaffold.of(context).showSnackBar(
//                                    SnackBar(
//                                        content: Text(
//                                          'Favor informar gestante Não!',
//                                          style: styleErro(),
//                                        ),
//                                        duration: Duration(seconds: 3),
//                                        backgroundColor: Colors.white,
//                                        onVisible: () {}),
//                                  );
//                                }
                                if (_valueMan) {
                                  Map<String, int> sexom = {"sexom": 1};
                                  Map<String, int> sexof = {"sexof": 0};
                                  Map<String, int> prag = {"gestante": gest};
                                  obj.newPaciente(sexom);
                                  obj.newPaciente(sexof);
                                  obj.newPaciente(prag);
                                  _valueWoman = false;
                                }
                              });
                            },
                            child: BoxImageWidget(
                              'assets/images/man.png',
                              _valueMan,
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        InkWell(
                          onTap: () {
                            setState(
                              () {
                                _valueWoman = !_valueWoman;
                                if (_valueWoman) {
                                  Map<String, int> sexof = {"sexof": 1};
                                  Map<String, int> sexom = {"sexom": 0};
                                  obj.newPaciente(sexof);
                                  obj.newPaciente(sexom);
                                  _valueMan = false;
                                }
                              },
                            );
                          },
                          child: BoxImageWidget(
                            'assets/images/woman.png',
                            _valueWoman,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                  ],
                ),
                TituloWidget('Qual sua idade?'),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 0.3),
                          InkWell(
                            onTap: () {
                              setState(
                                () {
                                  _value016 = !_value016;
                                  if (_value016) {
                                    _value1760 = false;
                                    _value60 = false;
                                    Map<String, int> idade1 = {"idade1": 1};
                                    Map<String, int> idade2 = {"idade2": 0};
                                    Map<String, int> idade3 = {"idade3": 0};
                                    obj.newPaciente(idade1);
                                    obj.newPaciente(idade2);
                                    obj.newPaciente(idade3);
                                  }
                                },
                              );
                            },
                            child: BoxTextpfWidget(
                              '0-16',
                              75,
                              _value016,
                            ),
                          ),
                          SizedBox(width: 0.3),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _value1760 = !_value1760;
                                if (_value1760) {
                                  Map<String, int> idade1 = {"idade1": 0};
                                  Map<String, int> idade2 = {"idade2": 1};
                                  Map<String, int> idade3 = {"idade3": 0};
                                  obj.newPaciente(idade1);
                                  obj.newPaciente(idade2);
                                  obj.newPaciente(idade3);
                                  _value016 = false;
                                  _value60 = false;
                                }
                              });
                            },
                            child: BoxTextpfWidget(
                              '17-60',
                              75,
                              _value1760,
                            ),
                          ),
                          SizedBox(width: 0.3),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _value60 = !_value60;
                                if (_value60) {
                                  _value016 = false;
                                  _value1760 = false;
                                  Map<String, int> idade1 = {"idade1": 0};
                                  Map<String, int> idade2 = {"idade2": 0};
                                  Map<String, int> idade3 = {"idade3": 1};
                                  obj.newPaciente(idade1);
                                  obj.newPaciente(idade2);
                                  obj.newPaciente(idade3);
                                }
                              });
                            },
                            child: BoxTextpfWidget(
                              '>60',
                              75,
                              _value60,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                TituloWidget('Gestante?'),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 10),
                    Container(
                      child: LiteRollingSwitch(
                        textOn: "Sim",
                        textOff: "Não",
                        colorOn: const Color(0xff7380f2),
                        colorOff: const Color(0xff7380f2),
                        iconOn: Icons.pregnant_woman_rounded,
                        iconOff: Icons.alarm_off,
                        textSize: 18.0,
                        onChanged: (bool position) {
                          prag = position;

                          if (position && _valueMan) {
//                            Scaffold.of(context).hideCurrentSnackBar();
                            Scaffold.of(context).showSnackBar(
                              SnackBar(
                                  content: Text(
                                    'Gestante só para o sexo feminino!',
                                    textAlign: TextAlign.center,
                                    style: styleErro(),
                                  ),
                                  duration: Duration(seconds: 3),
                                  backgroundColor: Colors.white,
                                  onVisible: () {}),
                            );
                          }
                          Map<String, int> gestante = {
                            "gestante": position ? 1 : 0
                          };
                          Map<String, int> man = {"sexom": _valueMan ? 1 : 0};
                          obj.newPaciente(gestante);
                          obj.newPaciente(man);
                        },
                      ),
                    ),
                  ],
                ),
                //TraillerWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
