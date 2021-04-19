import 'package:arboviroses/screens/dadospessoais_screen.dart';
import 'package:arboviroses/screens/exames_screen.dart';
import 'package:arboviroses/screens/febre_screen.dart';
import 'package:arboviroses/screens/resultado_screen.dart';
import 'package:arboviroses/screens/sintomas_screen.dart';
import 'package:arboviroses/screens/sorologia_screen.dart';
import 'package:arboviroses/widgets/bug_widget.dart';
import 'package:arboviroses/widgets/main_body_widget.dart';
import 'package:arboviroses/widgets/main_header_widget.dart';
import 'package:arboviroses/widgets/shadow_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool _expanded1 = false;
  bool _expanded2 = false;
  bool _expanded3 = false;
  bool _expanded4 = false;
  bool _expanded5 = false;
  bool _expanded6 = false;

  void expanded1() => _expanded1 = !_expanded1;

  void expanded2() => _expanded2 = !_expanded2;

  void expanded3() => _expanded3 = !_expanded3;

  void expanded4() => _expanded4 = !_expanded4;

  void expanded5() => _expanded5 = !_expanded5;

  void expanded6() => _expanded6 = !_expanded6;

  double bordaArr = 50.0;

  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);

    double itemsHeight1 = deviceInfo.size <= Size(500.0, 700.0) ||
            deviceInfo.orientation == Orientation.landscape
        ? (15 * 25.0) + 46
        : MediaQuery.of(context).size.height * 0.45; //

    double itemsHeight2 = deviceInfo.size <= Size(500.0, 700.0) ||
            deviceInfo.orientation == Orientation.landscape
        ? (25 * 25.0) + 200
        : MediaQuery.of(context).size.height * 0.68; //

    double itemsHeight3 = deviceInfo.size <= Size(500.0, 700.0) ||
        deviceInfo.orientation == Orientation.landscape
        ? (10 * 25.0) + 40
        : MediaQuery.of(context).size.height * 0.48; //;

    double itemsHeight4 = deviceInfo.size <= Size(500.0, 700.0) ||
            deviceInfo.orientation == Orientation.landscape
        ? (62 * 26.2) + 100
        : MediaQuery.of(context).size.height * 3.1; //;

    double itemsHeight5 = deviceInfo.size <= Size(500.0, 700.0) ||
            deviceInfo.orientation == Orientation.landscape
        ? (13 * 25.0) + 30
        : MediaQuery.of(context).size.height * 0.65; //;

    double itemsHeight6 = deviceInfo.size <= Size(500.0, 700.0) ||
            deviceInfo.orientation == Orientation.landscape
        ? (12 * 25.0) + 25
        : MediaQuery.of(context).size.height * 0.60; //;

    double larguratela = MediaQuery.of(context).size.width * 1.0; // MEU PARA TESTAR LARGURA TELA

    return Container(
      child: Stack(
        children: [
          ShadowWidget(),
          MainHeaderWidget('D A I (Coleta)'),
          BugWidget(),
          MainBodyWidget(),
          Form(
            child: Padding(
              padding: const EdgeInsets.only(top: 180),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(bordaArr),
                          ),
                          elevation: 2,
                          margin: EdgeInsets.all(10),
                          child: Container(
                            width: larguratela, // MEU PARA TESTAR LARGURA TELA
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(bordaArr),
                              color: Theme.of(context).accentColor,
                            ),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  expanded1();
                                });
                              },
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      'Paciente',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
//                                    trailing: Icon(
//                                      Icons.expand_more,
//                                      color: Colors.white,
//                                    ),
                                  ),
                                  // AnimatedContainer(
                                  //   duration: Duration(milliseconds: 300),
                                  //   height: _expanded1 ? itemsHeight1 : 0,
                                  //   child: Container(
                                  //     padding: EdgeInsets.symmetric(
                                  //       horizontal: 15,
                                  //       vertical: 4,
                                  //     ),
                                  //     height: 25, //itemsHeight1,
                                  //     child: Container(
                                  //       child: Container(
                                  //         child: DadosPessoaisScreen(),
                                  //       ),
                                  //       width: double.infinity,
                                  //       decoration: BoxDecoration(
                                  //         color: Colors.blue,
                                  //         borderRadius:
                                  //             BorderRadius.circular(20),
                                  //       ),
                                  //     ),
                                  //   ),
                                  // ),
                                  AnimatedContainer(
                                    duration: Duration(milliseconds: 300),
                                    height: _expanded1 ? itemsHeight1 : 0,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 15,
                                        vertical: 4,
                                      ),
                                      height: itemsHeight1,
                                      width: larguratela,
                                      child: DadosPessoaisScreen(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(bordaArr),
                          ),
                          elevation: 2,
                          margin: EdgeInsets.all(10),
                          child: Container(
                            width: larguratela,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(bordaArr),
                              color: Theme.of(context).accentColor,
                            ),
//                            child: InkWell(
//                              onTap: () {
//                                setState(() {
//                                  expanded3();
//                                });
//                              },
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    expanded3();
                                  });
                                },
                                child: Column(
                                  children: [
                                    ListTile(
                                      title: Text(
                                        'Febre',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
//                                    trailing: Icon(
//                                      Icons.expand_more,
//                                      color: Colors.white,
//                                    ),
                                    ),
                                    AnimatedContainer(
                                      duration: Duration(milliseconds: 300),
                                      height: _expanded3 ? itemsHeight3 : 0,
                                      child: Container(
                                        width: larguratela,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 15,
                                          vertical: 4,
                                        ),
                                        height: itemsHeight3,
                                        child: FebreScreen(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            //),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(bordaArr),
                          ),
                          elevation: 2,
                          margin: EdgeInsets.all(10),
                          child: Container(
                            width: larguratela,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(bordaArr),
                              color: Theme.of(context).accentColor,
                            ),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  expanded2();
                                });
                              },
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      'Sintomas',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  AnimatedContainer(
                                    width: larguratela,
                                    duration: Duration(milliseconds: 300),
                                    height: _expanded2 ? itemsHeight2 : 0,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 15,
                                        vertical: 4,
                                      ),
                                      height: itemsHeight2,
                                      child: SintomasScreen(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(bordaArr),
                          ),
                          elevation: 2,
                          margin: EdgeInsets.all(10),
                          child: Container(
                            width: larguratela,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(bordaArr),
                              color: Theme.of(context).accentColor,
                            ),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  expanded4();
                                });
                              },
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      'Exames',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  AnimatedContainer(
                                    width: larguratela,
                                    duration: Duration(milliseconds: 300),
                                    height: _expanded4 ? itemsHeight4 : 0,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 15,
                                        vertical: 4,
                                      ),
                                      height: itemsHeight4,
                                      child: ExamesScreen(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(bordaArr),
                          ),
                          elevation: 2,
                          margin: EdgeInsets.all(10),
                          child: Container(
                            width: larguratela,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(bordaArr),
                              color: Theme.of(context).accentColor,
                            ),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  expanded5();
                                });
                              },
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      'Sorologia',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  AnimatedContainer(
                                    width: larguratela,
                                    duration: Duration(milliseconds: 300),
                                    height: _expanded5 ? itemsHeight5 : 0,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 15,
                                        vertical: 4,
                                      ),
                                      height: itemsHeight5,
                                      child: SorologiaScreen(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(bordaArr),
                          ),
                          elevation: 2,
                          margin: EdgeInsets.all(10),
                          child: Container(
                            width: larguratela,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(bordaArr),
                              color: Theme.of(context).accentColor,
                            ),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  expanded6();
                                });
                              },
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      'Resultado',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  AnimatedContainer(
                                    duration: Duration(milliseconds: 300),
                                    height: _expanded6 ? itemsHeight6 : 0,
                                    child: Container(
                                      width: larguratela,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 15,
                                        vertical: 4,
                                      ),
                                      height: itemsHeight6,
                                      child: ResultadoScreen(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
