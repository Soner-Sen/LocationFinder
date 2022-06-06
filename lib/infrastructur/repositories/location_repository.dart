import 'dart:io';

import '../../const.dart';
import '../api/location_api.dart';
import '../models/location_model.dart';

class LocationRepository {
  final LocationApi locationApi = LocationApi();

  Future<List<LocationModel>> getDataForLocations(String query) async {
    try {
      List<LocationModel> locations = await locationApi.getData(query);
      return locations;
    } on SocketException {
      throw SocketException(NETWORK_ERROR_MESSAGE);
    } catch (e) {
      throw Exception(GENERAL_ERROR_MESSAGE + ': ' + e.toString());
    }
  }
}
