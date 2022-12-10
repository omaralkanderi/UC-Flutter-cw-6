import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/models/classes.dart';
import 'package:flutter_application_1/pages/details.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "kuwait city landmarks",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      body: ListView.builder(itemBuilder: ((context, index) {
        return Container(
            child: InkWell(
          // to click and go to another page
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: ((context) {
              return Detailspage(landmark: Cw6.buildings[index]);
            })));
          },
          child: Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CachedNetworkImage(imageUrl: Cw6.buildings[index].imgUrl),
                Text(Cw6.buildings[index].name),
              ],
            ),
          ),
        ));
      })),
    );
  }
}
