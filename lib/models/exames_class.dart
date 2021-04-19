import 'package:flutter/Material.dart';

class ExamesClass with ChangeNotifier{
  int laco;
  int hemacias1;
  int hemacias2;
  int hemacias3;
  int hemoglobina1;
  int hemoglobina2;
  int hemoglobina3;
  int hematocrito1;
  int hematocrito2;
  int hematocrito3;
  int leucocitos1;
  int leucocitos2;
  int leucocitos3;
  int linfocitos1;
  int linfocitos2;
  int linfocitos3;
  int neutrofilos1;
  int neutrofilos2;
  int neutrofilos3;
  int plaqueta1;
  int plaqueta2;
  int plaqueta3;
  int pcr1;
  int pcr2;
  int pcr3;
  int tgo1;
  int tgo2;
  int tgo3;
  int tgp1;
  int tgp2;
  int tgp3;

  ExamesClass(this.laco,
              this.hemacias1,
              this.hemacias2,
              this.hemacias3,
              this.hemoglobina1,
              this.hemoglobina2,
              this.hemoglobina3,
              this.hematocrito1,
              this.hematocrito2,
              this.hematocrito3,
              this.leucocitos1,
              this.leucocitos2,
              this.leucocitos3,
              this.linfocitos1,
              this.linfocitos2,
              this.linfocitos3,
              this.neutrofilos1,
              this.neutrofilos2,
              this.neutrofilos3,
              this.plaqueta1,
              this.plaqueta2,
              this.plaqueta3,
              this.pcr1,
              this.pcr2,
              this.pcr3,
              this.tgo1,
              this.tgo2,
              this.tgo3,
              this.tgp1,
              this.tgp2,
              this.tgp3,);

  List<ExamesClass> _list = [];

  int get regCount {
    return _list.length;
  }

  List<ExamesClass> get items => [..._list];

  void clear() {
    _list = [];
    notifyListeners();
  }
  
  void newFunction(Map<String, int> map){
    ExamesClass obj;
    int qtd = regCount;
    
    if (qtd == 0){
      obj = new ExamesClass(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,);
      _list.add(obj);
    }

    int laco = map['laco'];
    int hemacias1 = map['hemacias1'];
    int hemacias2 = map['hemacias2'];
    int hemacias3 = map['hemacias3'];
    int hemoglobina1 = map['hemoglobina1'];
    int hemoglobina2 = map['hemoglobina2'];
    int hemoglobina3 = map['hemoglobina3'];
    int hematocrito1 = map['hematocrito1'];
    int hematocrito2 = map['hematocrito2'];
    int hematocrito3 = map['hematocrito3'];  
    int leucocitos1 = map['leucocitos1'];
    int leucocitos2 = map['leucocitos2'];
    int leucocitos3 = map['leucocitos3']; 
    int linfocitos1 = map['linfocitos1'];
    int linfocitos2 = map['linfocitos2'];
    int linfocitos3 = map['linfocitos3'];
    int neutrofilos1 = map['neutrofilos1'];
    int neutrofilos2 = map['neutrofilos2'];
    int neutrofilos3 = map['neutrofilos3'];
    int plaqueta1 = map['plaqueta1'];
    int plaqueta2 = map['plaqueta2'];
    int plaqueta3 = map['plaqueta3'];
    int pcr1 = map['pcr1'];
    int pcr2 = map['pcr2'];
    int pcr3 = map['pcr3'];
    int tgo1 = map['tgo1'];
    int tgo2 = map['tgo2'];
    int tgo3 = map['tgo3'];
    int tgp1 = map['tgp1'];
    int tgp2 = map['tgp2'];
    int tgp3 = map['tgp3'];

    if(laco != null) _list[0].laco = laco;
    if(hemacias1 != null) _list[0].hemacias1 = hemacias1;
    if(hemacias2 != null) _list[0].hemacias2 = hemacias2;
    if(hemacias3 != null) _list[0].hemacias3 = hemacias3;
    if(hemoglobina1 != null) _list[0].hemoglobina1 = hemoglobina1;
    if(hemoglobina2 != null) _list[0].hemoglobina2 = hemoglobina2;
    if(hemoglobina3 != null) _list[0].hemoglobina3 = hemoglobina3;  
    if(hematocrito1 != null) _list[0].hematocrito1 = hematocrito1;
    if(hematocrito2 != null) _list[0].hematocrito2 = hematocrito2;
    if(hematocrito3 != null) _list[0].hematocrito3 = hematocrito3;  
    if(leucocitos1 != null) _list[0].leucocitos1 = leucocitos1;
    if(leucocitos2 != null) _list[0].leucocitos2 = leucocitos2;
    if(leucocitos3 != null) _list[0].leucocitos3 = leucocitos3; 
    if(linfocitos1 != null) _list[0].linfocitos1 = linfocitos1;
    if(linfocitos2 != null) _list[0].linfocitos2 = linfocitos2;
    if(linfocitos3 != null) _list[0].linfocitos3 = linfocitos3;
    if(neutrofilos1 != null) _list[0].neutrofilos1 = neutrofilos1;
    if(neutrofilos2 != null) _list[0].neutrofilos2 = neutrofilos2;
    if(neutrofilos3 != null) _list[0].neutrofilos3 = neutrofilos3;
    if(plaqueta1 != null) _list[0].plaqueta1 = plaqueta1;
    if(plaqueta2 != null) _list[0].plaqueta2 = plaqueta2;
    if(plaqueta3 != null) _list[0].plaqueta3 = plaqueta3;
    if(pcr1 != null) _list[0].pcr1 = pcr1;
    if(pcr2 != null) _list[0].pcr2 = pcr2;
    if(pcr3 != null) _list[0].pcr3 = pcr3;
    if(tgo1 != null) _list[0].tgo1 = tgo1;
    if(tgo2 != null) _list[0].tgo2 = tgo2;
    if(tgo3 != null) _list[0].tgo3 = tgo3;
    if(tgp1 != null) _list[0].tgp1 = tgp1;
    if(tgp2 != null) _list[0].tgp2 = tgp2;
    if(tgp3 != null) _list[0].tgp3 = tgp3;
  
  }

}
