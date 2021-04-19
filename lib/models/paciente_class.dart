import 'package:flutter/material.dart';

class PacienteClass with ChangeNotifier {
  int sexof;
  int sexom;
  int idade1;
  int idade2;
  int idade3;
  int gestante;

  PacienteClass(this.sexof, this.sexom, this.idade1, this.idade2, this.idade3,
      this.gestante);

  List<PacienteClass> _list = [];

  int get regCount {
    return _list.length;
  }

  List<PacienteClass> get items => [..._list];

  void clear() {
    _list = [];
    notifyListeners();
  }

  void newPaciente(Map<String, int> map) {
    PacienteClass obj;
    int qtd = regCount;

    if (qtd == 0) {
      obj = new PacienteClass(
        0,
        0,
        0,
        0,
        0,
        0,
      );
      _list.add(obj);
    } 

    int sexom = map['sexom'];
    int sexof = map['sexof'];
    int idade1 = map['idade1'];
    int idade2 = map['idade2'];
    int idade3 = map['idade3'];
    int gestante = map['gestante'];

    if (sexom != null) _list[0].sexom = sexom;
    if (sexof != null) _list[0].sexof = sexof;
    if (idade1 != null) _list[0].idade1 = idade1;
    if (idade2 != null) _list[0].idade2 = idade2;
    if (idade3 != null) _list[0].idade3 = idade3;
    if (gestante != null) _list[0].gestante = gestante;
  }
}
