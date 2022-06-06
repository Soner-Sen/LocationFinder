import 'package:equatable/equatable.dart';

class LocationModel extends Equatable {
  final String name;
  final String disassembledName;
  final String type;

  final List<dynamic> coord;

  LocationModel({
    required this.name,
    required this.disassembledName,
    required this.type,
    required this.coord,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(
      name: json['name'],
      disassembledName: json['disassembledName'],
      type: json['type'],
      coord: json['coord'],
    );
  }

  @override
  List<Object?> get props => [name, disassembledName, type, coord];
}
