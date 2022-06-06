import 'package:flutter/material.dart';
import 'package:mentz_app/infrastructur/repositories/location_repository.dart';

import 'my_app.dart';

void main() {
  runApp(MyApp(locationRepo: LocationRepository()));
}
