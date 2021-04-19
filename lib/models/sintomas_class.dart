import 'package:flutter/material.dart';

class SintomasClass with ChangeNotifier {
  int dorretro;
  int cefaleia;
  int prurido;
  int dorabdominal;
  int hemorragia;
  int artralgia;
  int prostacao;
  int mialgia;
  int vomito;
  int conjutivite;
  int tosse;
  int dorcostas;
  int artrite;
  int dorouvido;
  int faltaapetite;
  int diarreia;
  int malestar;
  int dispneia;
  int sudorese;
  int calafrio;
  int linfadenopatia;
  int edema;
  int exantema;
  int hematoma;
  int outros;
  int nauseas;
  int convulsoes;

  SintomasClass(this.dorretro, this.cefaleia, this.prurido, this.dorabdominal, this.hemorragia, this.artralgia, 
  this.prostacao, this.mialgia, this.vomito, this.conjutivite, this.tosse, this.dorcostas, this.artrite, 
  this.dorouvido, this.faltaapetite, this.diarreia, this.malestar, this.dispneia, this.sudorese, this.calafrio, 
  this.linfadenopatia, this.edema, this.exantema, this.hematoma, this.outros, this.nauseas,this.convulsoes);

  List<SintomasClass> _list = [];

  int get regCount {
    return _list.length;
  }

  List<SintomasClass> get items => [..._list];

  void clear() {
    _list = [];
    notifyListeners();
  }
  
  void newFunction(Map<String, int> map){
    
    SintomasClass obj;
    int qtd = regCount;
    
    if (qtd == 0){
      obj = new SintomasClass(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,);
      _list.add(obj);
    }

    int dorretro = map['dorretro'];
    int cefaleia = map['cefaleia'];
    int prurido = map['prurido'];
    int dorabdominal = map['dorabdominal'];
    int hemorragia = map['hemorragia'];
    int artralgia = map['artralgia'];
    int prostacao = map['prostacao'];
    int mialgia = map['mialgia'];
    int convulsoes = map['convulsoes'];
    int vomito = map['vomito'];
    int conjutivite = map['conjutivite'];
    int tosse = map['tosse'];
    int dorcostas = map['dorcostas'];
    int artrite = map['artrite'];
    int dorouvido = map['dorouvido'];
    int faltaapetite = map['faltaapetite'];
    int diarreia = map['diarreia'];
    int malestar = map['malestar'];
    int dispneia = map['dispneia'];
    int sudorese = map['sudorese'];
    int calafrio = map['calafrio'];
    int linfadenopatia = map['linfadenopatia'];
    int edema = map['edema'];
    int exantema = map['exantema'];
    int hematoma = map['hematoma'];
    int outros = map['outros'];
    int nauseas = map['nauseas'];
    
    if(dorretro != null) _list[0].dorretro = dorretro;
    if(cefaleia != null) _list[0].cefaleia = cefaleia;
    if(prurido != null) _list[0].prurido = prurido;
    if(dorabdominal != null) _list[0].dorabdominal = dorabdominal;
    if(hemorragia != null) _list[0].hemorragia = hemorragia;
    if(artralgia != null) _list[0].artralgia = artralgia;
    if(prostacao != null) _list[0].prostacao = prostacao;
    if(mialgia != null) _list[0].mialgia = mialgia;
    if(convulsoes != null) _list[0].convulsoes = convulsoes;
    if(conjutivite != null) _list[0].conjutivite = conjutivite;
    if(tosse != null) _list[0].tosse = tosse;
    if(dorcostas != null) _list[0].dorcostas = dorcostas;
    if(artrite != null) _list[0].artrite = artrite;
    if(dorouvido != null) _list[0].dorouvido = dorouvido;
    if(faltaapetite != null) _list[0].faltaapetite = faltaapetite;    
    if(diarreia != null) _list[0].diarreia = diarreia;
    if(malestar != null) _list[0].malestar = malestar;
    if(dispneia != null) _list[0].dispneia = dispneia;    
    if(sudorese != null) _list[0].sudorese = sudorese;
    if(calafrio != null) _list[0].calafrio = calafrio;
    if(linfadenopatia != null) _list[0].linfadenopatia = linfadenopatia;    
    if(edema != null) _list[0].edema = edema;
    if(exantema != null) _list[0].exantema = exantema;
    if(hematoma != null) _list[0].hematoma = hematoma;    
    if(vomito != null) _list[0].vomito = vomito;
    if(nauseas != null) _list[0].nauseas = nauseas;
    if(outros != null) _list[0].outros = outros;    
  }
}
