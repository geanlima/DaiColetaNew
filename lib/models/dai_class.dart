import 'dart:convert';
import 'package:arboviroses/models/exames_class.dart';
import 'package:arboviroses/models/febre_class.dart';
import 'package:arboviroses/models/paciente_class.dart';
import 'package:arboviroses/models/resultado_class.dart';
import 'package:arboviroses/models/sintomas_class.dart';
import 'package:arboviroses/models/sorologia_class.dart';
import 'package:arboviroses/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DaiClass with ChangeNotifier {
  int id;

  //Dados do Paciente
  int idade1;
  int idade2;
  int idade3;
  int gestante;
  int sexof;
  int sexom;

  //Dados Febre
  int temperatura1;
  int temperatura2;
  int temperatura3;
  int duracao1;
  int duracao2;
  int duracao3;
  int temperaturanao;
  int febreausente;

  // Dados Sintomas
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

  // Dados Exames
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

// Dados Sorologia
  int dengueigg;
  int dengueigm;
  int denguens1;
  int zikaigg;
  int zikaigmint;
  int chikigg;
  int chikigm;

// Dados Resultado
  int doenca;

  DaiClass({
    this.artralgia,
    this.artrite,
    this.calafrio,
    this.cefaleia,
    this.chikigg,
    this.chikigm,
    this.conjutivite,
    this.convulsoes,
    this.dengueigg,
    this.dengueigm,
    this.denguens1,
    this.diarreia,
    this.dispneia,
    this.doenca,
    this.dorabdominal,
    this.dorcostas,
    this.dorouvido,
    this.dorretro,
    this.duracao1,
    this.duracao2,
    this.duracao3,
    this.edema,
    this.exantema,
    this.faltaapetite,
    this.febreausente,
    this.gestante,
    this.hemacias1,
    this.hemacias2,
    this.hemacias3,
    this.hematocrito1,
    this.hematocrito2,
    this.hematocrito3,
    this.hematoma,
    this.hemoglobina1,
    this.hemoglobina2,
    this.hemoglobina3,
    this.hemorragia,
    this.id,
    this.idade1,
    this.idade2,
    this.idade3,
    this.laco,
    this.leucocitos1,
    this.leucocitos2,
    this.leucocitos3,
    this.linfadenopatia,
    this.linfocitos1,
    this.linfocitos2,
    this.linfocitos3,
    this.malestar,
    this.mialgia,
    this.nauseas,
    this.neutrofilos1,
    this.neutrofilos2,
    this.neutrofilos3,
    this.outros,
    this.pcr1,
    this.pcr2,
    this.pcr3,
    this.plaqueta1,
    this.plaqueta2,
    this.plaqueta3,
    this.prostacao,
    this.prurido,
    this.sexof,
    this.sexom,
    this.sudorese,
    this.temperatura1,
    this.temperatura2,
    this.temperatura3,
    this.temperaturanao,
    this.tgo1,
    this.tgo2,
    this.tgo3,
    this.tgp1,
    this.tgp2,
    this.tgp3,
    this.tosse,
    this.vomito,
    this.zikaigg,
    this.zikaigmint,
  });
}

class DaiClassAction with ChangeNotifier {
  String baseUrl = Constants.BASE_API_URL;
  
  bool retorno = false;
  String bodyRetorno;

  Future<bool> addDai(
      PacienteClass pacienteClass,
      FebreClass febreClass,
      SintomasClass sintomasClass,
      ExamesClass examesClass,
      SorologiaClass sororologiaClass/*,
      ResultadoClass resultadoClass*/
      ) async {

    try {
      await http
          .post(baseUrl,
              headers: {"Content-type": "application/json"},
              body: json.encode({
                "instances":
                [[
                  pacienteClass.sexof,
                  pacienteClass.sexom,
                  pacienteClass.idade1,
                  pacienteClass.idade2,
                  pacienteClass.idade3,
                  pacienteClass.gestante,
                  sintomasClass.dorretro,
                  sintomasClass.prostacao,
                  sintomasClass.dorabdominal,
                  sintomasClass.nauseas,
                  sintomasClass.vomito,
                  sintomasClass.dorcostas,
                  sintomasClass.faltaapetite,
                  sintomasClass.dispneia,
                  sintomasClass.linfadenopatia,
                  sintomasClass.cefaleia,
                  sintomasClass.mialgia,
                  sintomasClass.hemorragia,
                  sintomasClass.conjutivite,
                  sintomasClass.artrite,
                  sintomasClass.diarreia,
                  sintomasClass.sudorese,
                  sintomasClass.edema,
                  sintomasClass.artralgia,
                  sintomasClass.prurido,
                  sintomasClass.convulsoes,
                  sintomasClass.tosse,
                  sintomasClass.dorouvido,
                  sintomasClass.malestar,
                  sintomasClass.calafrio,
                  sintomasClass.exantema,
                  sintomasClass.hematoma,
                  sintomasClass.outros,
                  febreClass.temperatura1,
                  febreClass.temperatura2,
                  febreClass.temperatura3,
                  febreClass.duracao1,
                  febreClass.duracao2,
                  febreClass.duracao3,
                  febreClass.febreausente,
                  febreClass.temperaturanao,
                  examesClass.laco,
                  examesClass.hemacias1,
                  examesClass.hemacias2,
                  examesClass.hemacias3,
                  examesClass.hemoglobina1,
                  examesClass.hemoglobina2,
                  examesClass.hemoglobina3,
                  examesClass.hematocrito1,
                  examesClass.hematocrito2,
                  examesClass.hematocrito3,
                  examesClass.leucocitos1,
                  examesClass.leucocitos2,
                  examesClass.leucocitos3,
                  examesClass.linfocitos1,
                  examesClass.linfocitos2,
                  examesClass.linfocitos3,
                  examesClass.neutrofilos1,
                  examesClass.neutrofilos2,
                  examesClass.neutrofilos3,
                  examesClass.plaqueta1,
                  examesClass.plaqueta2,
                  examesClass.plaqueta3,
                  examesClass.pcr1,
                  examesClass.pcr2,
                  examesClass.pcr3,
                  examesClass.tgo1,
                  examesClass.tgo2,
                  examesClass.tgo3,
                  examesClass.tgp1,
                  examesClass.tgp2,
                  examesClass.tgp3,
                  sororologiaClass.dengueigm,
                  sororologiaClass.dengueigg,
                  sororologiaClass.denguens1,
                  sororologiaClass.zikaigmint,
                  sororologiaClass.zikaigg,
                  sororologiaClass.chikigm,
                  sororologiaClass.chikigg
                ]]
              }
              )

      ).then((http.Response response) {
                if(response.statusCode == 200){
                  bodyRetorno = response.body.toString();
                  retorno = true;
                } else {
                  retorno = false;
                }
              }).catchError(((onError){       
                 print(onError);
              }));
          
      pacienteClass.clear();
      febreClass.clear();
      sintomasClass.clear();
      examesClass.clear();
      sororologiaClass.clear();
      
      notifyListeners();
      
      return retorno;

    } catch (error) {
      return false;
    }
  }
}
