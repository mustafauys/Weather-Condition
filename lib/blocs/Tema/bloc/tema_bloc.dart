import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:weather/blocs/Tema/bloc/tema_event.dart';
import 'package:weather/blocs/Tema/bloc/tema_state.dart';
import './bloc.dart';

class TemaBloc extends Bloc<TemaEvent, TemaState> {
  @override
  TemaState get initialState =>
  UygulamaTemasi(tema: ThemeData.light(), renk: Colors.blue);

  @override
  Stream<TemaState> mapEventToState(TemaEvent event) async* {
  
      UygulamaTemasi uygulamaTemasi;
  
      if (event is TemaDegistirEvent) {
        switch(event.havaDurumuKisaltmasi) {
  
          case "sn": // Karlı
          case "sl": // Sulu Kar
          case "h": // Dolu
          case "t": // Fırtına
          case "hc": // Çok Bulutlu

          uygulamaTemasi = UygulamaTemasi(tema: ThemeData(primaryColor: Colors.blueGrey), renk: Colors.grey);
          break;

          case "hr": // Ağır Yağmurlu
          case "lr": // Hafif Yağmurlu
          case "s": // Sağanak Yağışlı

          uygulamaTemasi = UygulamaTemasi(tema: ThemeData(primaryColor: Colors.indigoAccent), renk: Colors.indigo);

          break;

          case "lc": // Az Bulutlu
          case "c": // Açık Güneşli

          uygulamaTemasi = UygulamaTemasi(tema: ThemeData(primaryColor: Colors.orangeAccent), renk: Colors.yellow);

          break;
  
        }
        yield uygulamaTemasi;
      }
    }
  }
  