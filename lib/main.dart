import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_whiz/application/wheather/wheather_bloc.dart';
import 'package:weather_whiz/domain/core/failure/main_failures.dart';
import 'package:weather_whiz/domain/wheather/i_wheatherdata_repo.dart';
import 'package:weather_whiz/infrastructure/wheather/wheather_respository.dart';
import 'package:weather_whiz/ui/home_page/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  IWheatherDataRepo wheatherDataRepo = WheatherRepository();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WheatherBloc(wheatherDataRepo),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
