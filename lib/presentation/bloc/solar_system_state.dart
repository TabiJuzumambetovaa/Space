part of 'solar_system_bloc.dart';

@immutable
sealed class SolarSystemState {}

final class SolarSystemInitial extends SolarSystemState {}
final class SolarSystemLoading extends SolarSystemState {}

final class SolarSystemSuccess extends SolarSystemState {
  final String success;
  final SolarSystemModel? solarSystemModel;
  SolarSystemSuccess({required this.success,required this.solarSystemModel,});
}

final class SolarSystemError extends SolarSystemState {
 final String errorMessage;
 SolarSystemError({required this.errorMessage}); 
}

