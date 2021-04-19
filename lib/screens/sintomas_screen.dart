import 'package:arboviroses/widgets/single_widget.dart';
import 'package:flutter/material.dart';

class SintomasScreen extends StatefulWidget {
  @override
  _SintomasScreenState createState() => _SintomasScreenState();
}

class _SintomasScreenState extends State<SintomasScreen> {
  bool _selected1(bool sel1) {
    return sel1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded (
                  child: (
                    SingleWidget(campo: 'dorretro', function: _selected1, label: "Dor ao redor dos olhos")
                   ),),
                Expanded (
                  child: (
                      SingleWidget(campo: 'cefaleia', function: _selected1, label: "Dor de cabeça (cefaleia)")
                  ),),
                Expanded (
                  child: (
                      SingleWidget(campo: 'prurido', function: _selected1, label: "Coceira (prurido)")
                  ),),
              ],
            ),
            SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded (
                  child: (
                      SingleWidget(campo: 'dorabdominal', function: _selected1, label: "Dor abdominal")
                  ),),
                Expanded (
                  child: (
                      SingleWidget(campo: 'hemorragia', function: _selected1, label: "Hemorragia")
                  ),),
                Expanded (
                  child: (
                      SingleWidget(campo: 'artralgia', function: _selected1, label: "Dor nas articulações (artralgia)")
                  ),),
              ],
            ),
            SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded (
                  child: (
                      SingleWidget(campo: 'prostacao', function: _selected1, label: "Imobilidade física (prostração)")
                  ),),
                Expanded (
                  child: (
                      SingleWidget(campo: 'mialgia', function: _selected1, label: "Dor muscular (mialgia)")
                  ),),
                Expanded (
                  child: (
                      SingleWidget(campo: 'convulsoes', function: _selected1, label: "Convulção")
                  ),),
              ],
            ),
            SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded (
                  child: (
                      SingleWidget(campo: 'conjutivite', function: _selected1, label: "Conjuntivite")
                  ),),
                Expanded (
                  child: (
                      SingleWidget(campo: 'tosse', function: _selected1, label: "Tosse")
                  ),),
                Expanded (
                  child: (
                      SingleWidget(campo: 'dorcostas', function: _selected1, label: "Dor na costa")
                  ),),
              ],
            ),
            SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded (
                  child: (
                      SingleWidget(campo: 'artrite', function: _selected1, label: "Artrite")
                  ),),
                Expanded (
                  child: (
                      SingleWidget(campo: 'dorouvido', function: _selected1, label: "Dor de ouvido")
                  ),),
                Expanded (
                  child: (
                      SingleWidget(campo: 'faltaapetite', function: _selected1, label: "Falta de apetite")
                  ),),
              ],
            ),
            SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded (
                  child: (
                      SingleWidget(campo: 'diarreia', function: _selected1, label: "Diarreia")
                  ),),
                Expanded (
                  child: (
                      SingleWidget(campo: 'malestar', function: _selected1, label: "Mal-estar")
                  ),),
                Expanded (
                  child: (
                      SingleWidget(campo: 'dispneia', function: _selected1, label: "Dificuldade de respirar (dispneia)")
                  ),),
              ],
            ),
            SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded (
                  child: (
                      SingleWidget(campo: 'sudorese', function: _selected1, label: "Suor (sudorese)")
                  ),),
                Expanded (
                  child: (
                      SingleWidget(campo: 'calafrio', function: _selected1, label: "Calafrio")
                  ),),
                Expanded (
                  child: (
                      SingleWidget(campo: 'linfadenopatia', function: _selected1, label: "Nódulos (linfadenopatia)")
                  ),),
              ],
            ),
            SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded (
                  child: (
                      SingleWidget(campo: 'edema', function: _selected1, label: "Inchaço (edema)")
                  ),),
                Expanded (
                  child: (
                      SingleWidget(campo: 'exantema', function: _selected1, label: "Pele avermelhada (exantema)")
                  ),),
                Expanded (
                  child: (
                      SingleWidget(campo: 'hematoma', function: _selected1, label: "Lesão no corpo (hematoma)")
                  ),),
              ],
            ),
            SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded (
                  child: (
                      SingleWidget(campo: 'nauseas', function: _selected1, label: "Náusea")
                  ),),
                Expanded (
                  child: (
                      SingleWidget(campo: 'vomito', function: _selected1, label: "Vômito")
                  ),),
                Expanded (
                  child: (
                      SingleWidget(campo: 'outros', function: _selected1, label: "Outros")
                  ),),
              ],
            ),
            SizedBox(height: 15),

          ],
        ),
      ),
    );
  }
}
