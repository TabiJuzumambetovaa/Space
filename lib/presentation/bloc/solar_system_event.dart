part of 'solar_system_bloc.dart';

@immutable
sealed class SolarSystemEvent {
  
}
 class ClickEvent extends SolarSystemEvent {
  final String? englishName;
  final double? gravity;
  final String? aroundPlanet;
  final String? bodyType;
  

  ClickEvent({this.englishName, this.gravity, this.aroundPlanet, this.bodyType,} 
      );
}
