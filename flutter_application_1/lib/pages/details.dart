import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/models/classes.dart';

class Detailspage extends StatelessWidget {
  final Cw6 landmark;

  const Detailspage({super.key, required this.landmark});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(landmark.imgUrl),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("rating: ${landmark.name}"),
          ),
          Text(landmark.description)
        ],
      ),
    );
  }
}
