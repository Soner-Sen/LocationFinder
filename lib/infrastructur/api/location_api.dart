import 'dart:convert';
import 'dart:io';

import 'package:mentz_app/const.dart';
import 'package:mentz_app/infrastructur/models/location_model.dart';

import 'package:http/http.dart' as http;

class LocationApi {
  Future<List<LocationModel>> getData(String query) async {
    try {
      final url = Uri.parse(BASE_URL + RELATIVE_PATH);
      final response = await http.get(url);

      if (response.statusCode != 200) return [];

      final data = json.decode(utf8.decode(response.bodyBytes));
      List<dynamic> locations = data['locations'];

      return locations
          .map((location) => LocationModel.fromJson(location))
          .where((location) {
        final name = location.name.toLowerCase();
        final search = query.toLowerCase();
        return name.contains(search);
      }).toList();
    } on SocketException {
      throw SocketException(NETWORK_ERROR_MESSAGE);
    } catch (e) {
      throw Exception(GENERAL_ERROR_MESSAGE + ': ' + e.toString());
    }
  }
}
