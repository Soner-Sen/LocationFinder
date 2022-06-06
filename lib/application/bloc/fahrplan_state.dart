part of 'fahrplan_bloc.dart';

abstract class FahrplanState extends Equatable {
  const FahrplanState();

  @override
  List<Object> get props => [];
}

class FahrplanInitial extends FahrplanState {}

class FahrplanNotFound extends FahrplanState {}

class FahrplanLoading extends FahrplanState {}

class FahrplanLoaded extends FahrplanState {
  final List<LocationModel> locations;
  const FahrplanLoaded({required this.locations});

  @override
  List<Object> get props => [locations];
}

// onFailure
class FahrplanGeneralError extends FahrplanState {
  final String message;
  const FahrplanGeneralError({this.message = GENERAL_ERROR_MESSAGE});
}

class FahrplanNetworkError extends FahrplanState {
  final String message;
  const FahrplanNetworkError({this.message = NETWORK_ERROR_MESSAGE});
}
