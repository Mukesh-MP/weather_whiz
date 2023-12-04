import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_whiz/application/wheather/wheather_bloc.dart';
import 'package:weather_whiz/ui/home_page/widgets/cloudwidget.dart';
import 'package:intl/intl.dart';

class HomeScreenWeb extends StatelessWidget {
  const HomeScreenWeb({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/wheatherweb.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            left: size.width * .05,
            right: size.width * .05,
            top: size.height * .10,
            bottom: size.height * .10),
        child: Row(children: [
          Container(
            width: size.width * .3,
            height: size.height * .8,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(35)),
                color: Color.fromARGB(255, 250, 226, 189)),
            child: Column(children: [
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Today",
                    style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 239, 170, 130),
                        letterSpacing: 1.5),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    size: 25,
                    color: Color.fromARGB(255, 239, 170, 130),
                  )
                ],
              ),
              SizedBox(
                height: size.height * .01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.wb_sunny_rounded,
                    size: 80,
                    color: Color.fromARGB(255, 239, 170, 130),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  BlocBuilder<WheatherBloc, WheatherState>(
                    builder: (context, state) {
                      return Row(
                        children: [
                          Text(
                              state.wheatherData == null
                                  ? "-"
                                  : "${state.wheatherData?.main?.temp.round()}",
                              style: const TextStyle(
                                fontSize: 100,
                                color: Color.fromARGB(255, 239, 170, 130),
                              )),
                          const Text("\u00B0",
                              style: TextStyle(
                                fontSize: 100,
                                color: Color.fromARGB(255, 239, 170, 130),
                              )),
                        ],
                      );
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  BlocBuilder<WheatherBloc, WheatherState>(
                    builder: (context, state) {
                      return Text(
                        state.wheatherData?.weather![0].main ?? '',
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromARGB(255, 239, 170, 130),
                            letterSpacing: 1.5),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  BlocBuilder<WheatherBloc, WheatherState>(
                    builder: (context, state) {
                      return Text(
                        state.wheatherData?.name ?? "",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          letterSpacing: 1,
                          color: const Color.fromARGB(255, 239, 170, 130),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  BlocBuilder<WheatherBloc, WheatherState>(
                    builder: (context, state) {
                      return Text(
                        DateFormat('dd MMM yyyy').format(
                            DateTime.fromMillisecondsSinceEpoch(
                                (state.wheatherData?.dt ?? 1) * 1000)),
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: const Color.fromARGB(255, 239, 170, 130),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BlocBuilder<WheatherBloc, WheatherState>(
                        builder: (context, state) {
                          return Text(
                            "Feel Like ${state.wheatherData?.main?.feelsLike?.round().toString()}" ??
                                "",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: const Color.fromARGB(255, 239, 170, 130),
                            ),
                          );
                        },
                      ),
                      Text(
                        ' | ',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: const Color.fromARGB(255, 239, 170, 130),
                        ),
                      ),
                      BlocBuilder<WheatherBloc, WheatherState>(
                        builder: (context, state) {
                          return Text(
                            'Sunset ${(DateFormat('Hm').format(DateTime.fromMillisecondsSinceEpoch((state.wheatherData?.sys?.sunset ?? 1) * 1000)))}',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: const Color.fromARGB(255, 239, 170, 130),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              )
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: size.width * .05,
              right: size.width * .05,
            ),
            child: Column(
              children: [
                Container(
                  width: size.width * .3 < 300 ? 300 : size.width * .3,
                  height: 150,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                    gradient: RadialGradient(colors: [
                      Color.fromARGB(172, 250, 226, 189),
                      Color.fromARGB(82, 250, 226, 189),
                    ]),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CloudWidget(text: "Now", celcius: "25"),
                            CloudWidget(text: "2 AM", celcius: "25"),
                            CloudWidget(text: "3 AM", celcius: "25"),
                            CloudWidget(text: "4 AM", celcius: "25"),
                            CloudWidget(text: "5 AM", celcius: "25"),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 40, right: 40),
                          child: Divider(
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CloudWidget(text: "6 AM", celcius: "25"),
                            CloudWidget(text: "7 AM", celcius: "25"),
                            CloudWidget(text: "8 AM", celcius: "25"),
                            CloudWidget(text: "9 AM", celcius: "25"),
                            CloudWidget(text: "10 AM", celcius: "25"),
                          ],
                        ),
                      ]),
                ),
                SizedBox(
                  height: size.height * .07,
                ),
                SizedBox(
                  width: size.width * .3 < 300 ? 300 : size.width * .3,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Random Text",
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                // height: 1,
                                letterSpacing: 1),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Improve him believe opinion offered met and end cheered forbade. Friendly as stronger speedily by recurred. Son interest wandered sir addition end say. Manners beloved affixed picture men ask.",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          height: 1.4,
                          letterSpacing: 0.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ) /* add child content here */,
    );
  }
}
