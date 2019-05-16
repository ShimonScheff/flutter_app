import 'package:flutter/material.dart';


class Boxes extends StatelessWidget {
  final List<String> boxesList;

  Boxes(this.boxesList);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: boxesList.map(
          (element) => Card(
            child: Column(
              children: <Widget>[
                Image.asset('assets/images/onePunch.jpeg', width: 600,),
                Text(element)
              ],
            ),
          )
      ).toList(),
    );
  }
}