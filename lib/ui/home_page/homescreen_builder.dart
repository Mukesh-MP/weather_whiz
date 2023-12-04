import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_whiz/application/wheather/wheather_bloc.dart';
import 'package:weather_whiz/ui/home_page/homescreen.dart';
import 'package:weather_whiz/ui/home_page/homescreen_web.dart';
import 'package:weather_whiz/ui/responsive.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<WheatherBloc>(context)
          .add(const WheatherEvent.getWheatherData());
    });

    return Scaffold(
        body: kIsWeb && ResponsiveWidget.isMobileScreen(context) == false
            ? const HomeScreenWeb()
            : const HomeScreenMobile());
  }
}
