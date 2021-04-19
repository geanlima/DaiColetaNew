import 'package:flutter/material.dart';

class ResultadoClass with ChangeNotifier{
  int doenca;
  
  ResultadoClass(
    this.doenca,
  );

  List<ResultadoClass> _list = [];

  int get regCount {
    return _list.length;
  }
  
  List<ResultadoClass> get items => [..._list];
  
  void clear() {
    _list = [];
    notifyListeners();
  }
  void newFunction(Map<String, int> map){
    ResultadoClass obj;
    int qtd = regCount;
    
    if (qtd == 0){
      obj = new ResultadoClass(0,);
      _list.add(obj);
    }

    int doenca = map['doenca'];

    if(doenca != null) _list[0].doenca = doenca;    
    
  }
}