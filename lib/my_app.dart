import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentz_app/infrastructur/repositories/location_repository.dart';

import 'application/bloc/fahrplan_bloc.dart';
import 'presentation/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  final LocationRepository locationRepo;

  const MyApp({Key? key, required this.locationRepo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<FahrplanBloc>(
        create: (context) => FahrplanBloc(locationRepo),
        child: const HomeScreen(),
      ),
    );
  }
}
