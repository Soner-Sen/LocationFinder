import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mentz_app/const.dart';
import 'package:mentz_app/infrastructur/models/location_model.dart';
import 'package:mentz_app/infrastructur/repositories/location_repository.dart';
import 'package:meta/meta.dart';

part 'fahrplan_event.dart';
part 'fahrplan_state.dart';

class FahrplanBloc extends Bloc<FahrplanEvent, FahrplanState> {
  final LocationRepository locationRepo;

  FahrplanBloc(this.locationRepo) : super(FahrplanInitial()) {
    on<FahrplanEvent>((event, emit) async {
      if (event is GetLocationRequest) {
        try {
          emit(FahrplanLoading());
          List<LocationModel> locations =
              await locationRepo.getDataForLocations(event.location);
          if (locations.isEmpty) {
            emit(FahrplanNotFound());
          } else {
            emit(FahrplanLoaded(locations: locations));
          }
        } catch (e) {
          if (e is SocketException) {
            emit(const FahrplanNetworkError(message: NETWORK_ERROR_MESSAGE));
          } else {
            emit(const FahrplanGeneralError(message: GENERAL_ERROR_MESSAGE));
          }
        }
      }
    });
  }
}
