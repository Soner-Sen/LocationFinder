import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentz_app/const.dart';

import '../../application/bloc/fahrplan_bloc.dart';
import '../widgets/loading_circle.dart';
import '../widgets/location_card.dart';
import '../widgets/network_error.dart';
import '../widgets/not_found.dart';
import '../widgets/search_view.dart';
import '../widgets/start_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary_color,
        title: const Text(APPBAR_TITLE),
        centerTitle: true,
      ),
      body: InkWell(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(padding_size),
              child: SearchViewWidget(searchController: _searchController),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(padding_size),
                child: BlocConsumer<FahrplanBloc, FahrplanState>(
                  listener: (context, state) {
                    if (state is FahrplanNetworkError) {}
                  },
                  builder: (context, FahrplanState state) {
                    if (state is FahrplanGeneralError) {
                      return Center(
                        child: Text(
                          state.message,
                        ),
                      );
                    } else if (state is FahrplanLoaded) {
                      return ListView.builder(
                        itemCount: state.locations.length,
                        itemBuilder: (context, index) {
                          return LocationCard(
                            location: state.locations[index],
                          );
                        },
                      );
                    } else if (state is FahrplanLoading) {
                      return const LoadingCircleWidget();
                    } else if (state is FahrplanNotFound) {
                      return const NotFoundWidget();
                    } else {
                      if (state is FahrplanNetworkError) {
                        return const NetworkErrorWidget();
                      } else {
                        return const StartView();
                      }
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
