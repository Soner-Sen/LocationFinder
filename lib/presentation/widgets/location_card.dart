import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentz_app/presentation/screens/location_detail_screen.dart';

import '../../../application/bloc/fahrplan_bloc.dart';
import '../../../infrastructur/models/location_model.dart';

class LocationCard extends StatelessWidget {
  final LocationModel location;

  const LocationCard({Key? key, required this.location}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (newcontext) => BlocProvider.value(
                value: BlocProvider.of<FahrplanBloc>(context),
                child: LocationDetailScreen(location: location))));
      },
      child: Card(
        elevation: 6,
        child: ListTile(
          title: Text(
            location.name,
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                location.disassembledName,
              ),
              Text(
                location.type,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
