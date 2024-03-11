

import 'dart:core';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_space_attempt2/core/network/dio_settings.dart';
import 'package:flutter_space_attempt2/presentation/models/solar_system_model.dart';

part 'solar_system_event.dart';
part 'solar_system_state.dart';

class SolarSystemBloc extends Bloc<SolarSystemEvent, SolarSystemState> {
  SolarSystemBloc() : super(SolarSystemInitial()) {
    on<ClickEvent>((event, emit) async{
      emit(SolarSystemLoading());
      try{
        final solarSystemModel = await getInfoSolarSystem();
        emit(SolarSystemSuccess(success: "", solarSystemModel: solarSystemModel));
      }catch(e){
        emit(SolarSystemError(errorMessage: ""));
      }
     });
  }
  Future<SolarSystemModel?> getInfoSolarSystem() async {
    Dio dio = DioSettings().dio;
    try {
      final Response response =
          await dio.get("https://api.le-systeme-solaire.net/rest/bodies/");
      final solarSysModel = SolarSystemModel.fromJson(response.data);
      return solarSysModel;
    } catch (e) {
      Text('Error during API request: $e');
      return null;
    }
  }
  
}
