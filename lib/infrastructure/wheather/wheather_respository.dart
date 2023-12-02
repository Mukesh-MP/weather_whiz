import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:location/location.dart';
import 'package:weather_whiz/domain/core/endpoints.dart';

import 'package:weather_whiz/domain/core/failure/main_failures.dart';
import 'package:weather_whiz/domain/core/key.dart';
import 'package:weather_whiz/domain/wheather/i_wheatherdata_repo.dart';
import 'package:weather_whiz/domain/wheather/wheather_response_model.dart';
import 'package:http/http.dart' as http;

class WheatherRepository implements IWheatherDataRepo {
  double? latitude;
  double? longitude;

  @override
  Future<Either<MainFailure, WheatherResponseModel>> getWheatherData() async {
    try {
      await getCurrentLocation();
      String url =
          "${BaseUrl.commonurl}lat=$latitude&lon=$longitude&appid=${ApiKeys.apiKey}";

      //  "lat=44.34&lon=10.99&appid=0b2c01673f6de27ba57fe0e05e67cf77"
      // String url =
      //      "http://api.weatherstack.com/current?access_key=424f02f9cbebb46cc97f305ef5e400e9&query=New%20York";
      final response = await http.get(Uri.parse(url));
      log("api done");
      if (response.statusCode != null) {
        if (response.statusCode == 200) {
          if (response.body != null) {
            log("Response data: ${response.body}");
            Map<String, dynamic>? userMap = json.decode(response.body);
            // log("data : ${userMap.toString()}");
            // log((json.decode(response.data)).toString());
            log("api success 200");

            // WheatherResponseModel? wheatherAllData;

            log("api success");
            return Right(WheatherResponseModel.fromJson(userMap!));
          } else {
            return const Left(MainFailure.serverFailure());
          }
        } else {
          log("api else");
          return const Left(MainFailure.serverFailure());
        }
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      log("catch failure");
      return const Left(MainFailure.clientFailure());
    }
  }

  Future getCurrentLocation() async {
    Location location = Location();
    bool? serviceEnabled;
    PermissionStatus? permissionGranted;
    LocationData? locationData;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }
    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    locationData = await location.getLocation();
    latitude = locationData.latitude;
    longitude = locationData.longitude;
    print(locationData);
  }
}
