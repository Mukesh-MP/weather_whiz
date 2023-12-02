import 'package:flutter/material.dart';

class CloudWidget extends StatelessWidget {
  CloudWidget({super.key, this.text, this.celcius});

  String? text = "";
  String? celcius = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                text ?? "",
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            children: [
              const Icon(
                Icons.cloud_rounded,
                color: Colors.white,
                size: 15,
              ),
              const SizedBox(
                width: 3,
              ),
              Text(
                "$celcius\u00B0",
                style: const TextStyle(color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}
