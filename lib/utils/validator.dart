import 'package:arboviroses/models/exames_class.dart';
import 'package:arboviroses/models/febre_class.dart';
import 'package:arboviroses/models/paciente_class.dart';
import 'package:arboviroses/models/resultado_class.dart';
import 'package:arboviroses/models/sintomas_class.dart';
import 'package:arboviroses/models/sorologia_class.dart';
import 'package:flutter/material.dart';

class Validator {
  PacienteClass pacienteClass;
  FebreClass febreClass;
  SintomasClass sintomasClass;
  ExamesClass examesClass;
  SorologiaClass sorologiaClass;
  ResultadoClass resultadoClass;
  BuildContext context;

  Validator(
      {this.pacienteClass,
      this.examesClass,
      this.febreClass,
      this.sintomasClass,
      this.sorologiaClass,
      this.resultadoClass,
      this.context});

  int total = 0;

  bool validateFebre(FebreClass febre) {
    bool retorno = false;

    total = febre.temperatura1 +
        febre.temperatura2 +
        febre.temperatura3 +
        febre.duracao1 +
        febre.duracao2 +
        febre.duracao3 +
        febre.temperaturanao +
        febre.febreausente;

    if (total == 0) {
      retorno = false;
    } else {
      retorno = true;
    }

    return retorno;
  }

  bool validateSintomas(SintomasClass sintomas) {
    bool retorno = false;

    total = sintomas.dorretro +
        sintomas.cefaleia +
        sintomas.prurido +
        sintomas.dorabdominal +
        sintomas.hemorragia +
        sintomas.artralgia +
        sintomas.prostacao +
        sintomas.mialgia +
        sintomas.vomito +
        sintomas.conjutivite +
        sintomas.tosse +
        sintomas.dorcostas +
        sintomas.artrite +
        sintomas.dorouvido +
        sintomas.faltaapetite +
        sintomas.diarreia +
        sintomas.malestar +
        sintomas.dispneia +
        sintomas.sudorese +
        sintomas.calafrio +
        sintomas.linfadenopatia +
        sintomas.edema +
        sintomas.exantema +
        sintomas.hematoma +
        sintomas.outros +
        sintomas.nauseas +
        sintomas.convulsoes;

    if (total <= 2) {
      retorno = false;
    } else {
      retorno = true;
    }

    return retorno;
  }

  bool validateSorologia(SorologiaClass sorologia) {
    bool retorno = false;

    total = sorologia.dengueigm + sorologia.denguens1 + sorologia.dengueigg;
        
    if (total == 3) {
      retorno = false;
    } else {
      retorno = true;  
    }

    return retorno;
  }

  bool validateResultado(ResultadoClass resultado) {
    bool retorno = false;

    total = resultado.doenca;

    if (total == 0) {
      retorno = false;
    } else {
      retorno = true;
    }

    return retorno;
  }

  bool validatePaciente(PacienteClass paciente) {
    bool retorno = false;

    int prag = paciente.gestante;
    int man = paciente.sexom;
    
    if (prag == 1 && man == 1) {
      retorno = false;
    } else {
      retorno = true;
    }

    return retorno;
  }

  
}
