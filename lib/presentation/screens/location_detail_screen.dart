import 'package:flutter/material.dart';
import 'package:mentz_app/const.dart';

import '../../infrastructur/models/location_model.dart';

class LocationDetailScreen extends StatelessWidget {
  final LocationModel location;
  const LocationDetailScreen({Key? key, required this.location})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Location Detail'),
        backgroundColor: primary_color,
      ),
      body: Card(
        elevation: elevation,
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(padding_size),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                location.name,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                location.disassembledName,
                style: const TextStyle(fontSize: font_size - 5),
              ),
              Text(
                location.type,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
