import 'package:flutter/material.dart';

class FebreClass with ChangeNotifier {
  int temperatura1;
  int temperatura2;
  int temperatura3;
  int duracao1;
  int duracao2;
  int duracao3;
  int temperaturanao;
  int febreausente;

  FebreClass(this.temperatura1, this.temperatura2, this.temperatura3, this.duracao1, this.duracao2, this.duracao3, this.febreausente, this.temperaturanao);
  
  List<FebreClass> _list = [];

  int get regCount {
    return _list.length;
  }

  List<FebreClass> get items => [..._list];
  
  void clear() {
    _list = [];
    notifyListeners();
  }
  
  void newFunction(Map<String, int> map){
    
    FebreClass obj;
    int qtd = regCount;
    
    if (qtd == 0){
      obj = new FebreClass(0,0,0,0,0,0,0,0,);
      _list.add(obj);
    }

    int temperatura1 = map['temperatura1'];
    int temperatura2 = map['temperatura2'];
    int temperatura3 = map['temperatura3'];
    int duracao1 = map['duracao1'];
    int duracao2 = map['duracao2'];
    int duracao3 = map['duracao3'];
    int temperaturanao = map['temperaturanao'];
    int febreausente = map['febreausente'];
    
    if(temperatura1 != null) _list[0].temperatura1 = temperatura1;
    if(temperatura2 != null) _list[0].temperatura2 = temperatura2;
    if(temperatura3 != null) _list[0].temperatura3 = temperatura3;
    if(duracao1 != null) _list[0].duracao1 = duracao1;
    if(duracao2 != null) _list[0].duracao2 = duracao2;
    if(duracao3 != null) _list[0].duracao3 = duracao3;
    if(temperaturanao != null) _list[0].temperaturanao = temperaturanao;
    if(febreausente != null) _list[0].febreausente = febreausente;

  }

}