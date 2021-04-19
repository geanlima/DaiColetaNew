import 'package:arboviroses/models/dai_class.dart';
import 'package:arboviroses/models/exames_class.dart';
import 'package:arboviroses/models/febre_class.dart';
import 'package:arboviroses/models/paciente_class.dart';
import 'package:arboviroses/models/resultado_class.dart';
import 'package:arboviroses/models/sintomas_class.dart';
import 'package:arboviroses/models/sorologia_class.dart';
import 'package:arboviroses/utils/app_routes.dart';
import 'package:arboviroses/utils/validator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ResultadoScreen extends StatefulWidget {
  @override
  _ResultadoScreenState createState() => _ResultadoScreenState();
}

class _ResultadoScreenState extends State<ResultadoScreen> {
  bool _selected1 = false;
  bool _selected2 = false;
  bool _selected3 = false;
  bool _status = true;
  bool _statusInicio = true;
  String dengue;
  String zika;
  String chikungunya;

  double ndengue;
  double nzika;
  double nchikungunya;

  @override
  Widget build(BuildContext context) {
    ResultadoClass obj = Provider.of(context, listen: false);
    int segErro = 6;

    TextStyle styleErro() {
      return TextStyle(
        fontSize: 20,
        color: Colors.red,
        fontWeight: FontWeight.bold,
      );
    }

    TextStyle styleSucess() {
      return TextStyle(
        fontSize: 20,
        color: Colors.green,
        fontWeight: FontWeight.bold,
      );
    }

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: <Widget>[
          // SizedBox(
          //   height: 10,
          // ),
          Container(
            padding: EdgeInsets.only(top: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _status
                    ? InkWell(
                        onTap: () async {
                          setState(() {
                            _status = false;
                          });
                          PacienteClass paciente;
                          FebreClass febre;
                          SintomasClass sintomas;
                          ExamesClass exames;
                          SorologiaClass sorologia;
                          ResultadoClass resultado;

                          if (Provider.of<PacienteClass>(context, listen: false)
                              .items
                              .isEmpty) {
                            paciente = new PacienteClass(0, 0, 0, 0, 0, 0);
                          } else {
                            paciente = Provider.of<PacienteClass>(context,
                                    listen: false)
                                .items[0];
                          }

                          if (Provider.of<FebreClass>(context, listen: false)
                              .items
                              .isEmpty) {
                            febre = new FebreClass(0, 0, 0, 0, 0, 0, 0, 0);
                          } else {
                            febre =
                                Provider.of<FebreClass>(context, listen: false)
                                    .items[0];
                          }

                          if (Provider.of<SintomasClass>(context, listen: false)
                              .items
                              .isEmpty) {
                            sintomas = new SintomasClass(
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0);
                          } else {
                            sintomas = Provider.of<SintomasClass>(context,
                                    listen: false)
                                .items[0];
                          }

                          if (Provider.of<ExamesClass>(context, listen: false)
                              .items
                              .isEmpty) {
                            exames = new ExamesClass(
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0);
                          } else {
                            exames =
                                Provider.of<ExamesClass>(context, listen: false)
                                    .items[0];
                          }

                          if (Provider.of<SorologiaClass>(context,
                                  listen: false)
                              .items
                              .isEmpty) {
                            sorologia = new SorologiaClass(0, 0, 0, 0, 0, 0, 0);
                          } else {
                            sorologia = Provider.of<SorologiaClass>(context,
                                    listen: false)
                                .items[0];
                          }

                          if (Provider.of<ResultadoClass>(context,
                                  listen: false)
                              .items
                              .isEmpty) {
                            resultado = new ResultadoClass(
                              0,
                            );
                          } else {
                            resultado = Provider.of<ResultadoClass>(context,
                                    listen: false)
                                .items[0];
                          }

                          Validator validatePaciente = new Validator();
                          Validator validateFebre = new Validator();
                          Validator validateSintomas = new Validator();
                          //Validator validateResultado = new Validator();
                          Validator validateSorologia = new Validator();

                          bool validPaciente =
                              validatePaciente.validatePaciente(paciente);
                          bool validFebre = validateFebre.validateFebre(febre);
                          bool validSintomas =
                              validateSintomas.validateSintomas(sintomas);
                          //bool validResultado = validateResultado.validateResultado(resultado);
                          bool validSorologia =
                              validateSorologia.validateSorologia(sorologia);

                          if (!validSorologia) {
                            Scaffold.of(context).hideCurrentSnackBar();
                            Scaffold.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  "Favor selecionar somente 2 opções de sorologia para Dengue!",
                                  textAlign: TextAlign.center,
                                  style: styleErro(),
                                ),
                                backgroundColor: Colors.white,
                                duration: Duration(seconds: segErro),
                                onVisible: () {
                                  setState(() {
                                    _status = true;
                                  });
                                },
                              ),
                            );
                          }

                          if (!validSintomas) {
                            Scaffold.of(context).hideCurrentSnackBar();
                            Scaffold.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  "Favor escolher pelo menos 3 sintomas",
                                  textAlign: TextAlign.center,
                                  style: styleErro(),
                                ),
                                backgroundColor: Colors.white,
                                duration: Duration(seconds: segErro),
                                onVisible: () {
                                  setState(() {
                                    _status = true;
                                  });
                                },
                              ),
                            );
                          }

                          if (!validFebre) {
                            Scaffold.of(context).hideCurrentSnackBar();
                            Scaffold.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  "Favor escolher pelo menos 1 item de febre",
                                  textAlign: TextAlign.center,
                                  style: styleErro(),
                                ),
                                backgroundColor: Colors.white,
                                duration: Duration(seconds: segErro),
                                onVisible: () {
                                  setState(() {
                                    _status = true;
                                  });
                                },
                              ),
                            );
                          }

                          if (!validPaciente) {
                            Scaffold.of(context).hideCurrentSnackBar();
                            Scaffold.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  "Opção gestante é apenas para o sexo Feminino!",
                                  textAlign: TextAlign.center,
                                  style: styleErro(),
                                ),
                                backgroundColor: Colors.white,
                                duration: Duration(seconds: segErro),
                                onVisible: () {
                                  setState(() {
                                    _status = true;
                                  });
                                },
                              ),
                            );
                          }

                          if (validSintomas &&
                              validFebre &&
                              //validResultado &&
                              validPaciente &&
                              validSorologia) {
                            final ret = await Provider.of<DaiClassAction>(
                                    context,
                                    listen: false)
                                .addDai(
                                    paciente != null ? paciente : null,
                                    febre != null ? febre : null,
                                    sintomas != null ? sintomas : null,
                                    exames != null ? exames : null,
                                    sorologia != null ? sorologia : null
                                    //resultado != null ? resultado : null
                                    );

                            if (ret) {
                              var retornoBody =
                                  await Provider.of<DaiClassAction>(context,
                                          listen: false)
                                      .bodyRetorno;

                              var lstBody = retornoBody.split(",").toList();

                              dengue =
                                  lstBody[0].toString().replaceAll("[[", "");
                              zika = lstBody[1].toString();
                              chikungunya =
                                  lstBody[2].toString().replaceAll("]]", "");

                              if (double.parse(dengue) > 1) {
                                ndengue = 0.00;
                              } else {
                                ndengue = double.parse(dengue) * 100;
                              }

                              if (double.parse(zika) > 1) {
                                nzika = 0.00;
                              } else {
                                nzika = double.parse(zika) * 100;
                              }

                              if (double.parse(chikungunya) > 1) {
                                nchikungunya = 0.00;
                              } else {
                                nchikungunya = double.parse(chikungunya) * 100;
                              }

                              Scaffold.of(context).hideCurrentSnackBar();
                              Scaffold.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Dados coletado com sucesso!',
                                    textAlign: TextAlign.center,
                                    style: styleSucess(),
                                  ),
                                  duration: Duration(seconds: 10),
                                  backgroundColor: Colors.white,
                                  onVisible: () async {
                                    setState(
                                      () {
                                        _status = true;
                                      },
                                    );
                                  },
                                ),
                              );
                            } else {
                              Scaffold.of(context).hideCurrentSnackBar();
                              Scaffold.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    "Registro não gravado! Problema no servidor ou internet indisponível.",
                                    textAlign: TextAlign.center,
                                    style: styleErro(),
                                  ),
                                  backgroundColor: Colors.white,
                                  duration: Duration(seconds: segErro),
                                  onVisible: () {
                                    setState(() {
                                      _status = true;
                                    });
                                  },
                                ),
                              );
                            }
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 120,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Theme.of(context).primaryColor,
                              ),
                              child: Text(
                                'Consultar',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      )
                    : Center(
                        child: CircularProgressIndicator(),
                      ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(15.0),
                  child: new CircularPercentIndicator(
                    radius: 65.0,
                    lineWidth: 8.0,
                    animation: true,
                    percent: ndengue == null
                        ? 0.00
                        : double.parse(ndengue.toStringAsFixed(2)) / 100,
                    center: new Text(
                      "${ndengue == null ? 0 : ndengue.toStringAsFixed(2)}%",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 12.0),
                    ),
                    footer: new Text(
                      "Dengue",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.0),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Theme.of(context).primaryColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  child: new CircularPercentIndicator(
                      radius: 65.0,
                      lineWidth: 8.0,
                      animation: true,
                      percent: nchikungunya == null
                          ? 0.00
                          : double.parse(nchikungunya.toStringAsFixed(2)) / 100,
                      center: new Text(
                        "${nchikungunya == null ? 0 : nchikungunya.toStringAsFixed(2)}%",
                        style: new TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12.0),
                      ),
                      footer: new Text(
                        "Chikungunya",
                        style: new TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15.0),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor:
                          Theme.of(context).primaryColor //Colors.blue,
                      ),
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  child: new CircularPercentIndicator(
                    radius: 65.0,
                    lineWidth: 8.0,
                    animation: true,
                    percent: nzika == null
                        ? 0.00
                        : double.parse(nzika.toStringAsFixed(2)) / 100,
                    center: new Text(
                      "${nzika == null ? 0 : nzika.toStringAsFixed(2)}%",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 12.0),
                    ),
                    footer: new Text(
                      "Zika",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.0),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Theme.of(context).primaryColor,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () async {
                    setState(() {
                      _statusInicio = false;
                    });
                    Navigator.of(context).pushNamed(AppRoutes.HOME);
                  },
                  child: _statusInicio
                      ? Container(
                          height: 50,
                          width: 120,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Theme.of(context).primaryColor,
                          ),
                          child: Text(
                            'Início',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      : Center(
                          child: CircularProgressIndicator(),
                        ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
