import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/bloc/fahrplan_bloc.dart';
import '../../../const.dart';

class SearchViewWidget extends StatelessWidget {
  const SearchViewWidget({
    Key? key,
    required TextEditingController searchController,
  })  : _searchController = searchController,
        super(key: key);

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: _searchController,
        onChanged: (String value) async {
          if (value.length > 1) {
            BlocProvider.of<FahrplanBloc>(context)
                .add(GetLocationRequest(location: value));
          }
        },
        style: const TextStyle(
          fontSize: font_size,
          color: Colors.white,
        ),
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            prefixIcon: const Icon(Icons.search, color: Colors.white),
            hintText: HINT_TEXT,
            hintStyle: const TextStyle(
              fontSize: font_size,
              color: Colors.white,
            ),
            border: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: secondary_color, width: border_width),
                borderRadius: BorderRadius.circular(radius_size)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: secondary_color, width: border_width),
                borderRadius: BorderRadius.circular(radius_size))));
  }
}
