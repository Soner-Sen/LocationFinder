part of 'fahrplan_bloc.dart';

@immutable
abstract class FahrplanEvent extends Equatable {
  const FahrplanEvent();

  @override
  List<Object> get props => [];
}

class GetLocationRequest extends FahrplanEvent {
  final String location;

  GetLocationRequest({required this.location});
}
