import 'package:weather_whiz/domain/core/failure/main_failures.dart';
import 'package:weather_whiz/domain/wheather/wheather_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class IWheatherDataRepo {
  Future<Either<MainFailure, WheatherResponseModel>> getWheatherData();
}
