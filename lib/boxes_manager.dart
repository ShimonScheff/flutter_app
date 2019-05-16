import 'package:flutter/material.dart';

import './box.dart';

class BoxesManager extends StatefulWidget {
  final startingBox;

  BoxesManager(this.startingBox);

  @override
  State<StatefulWidget> createState() {
    return _BoxesManagerState();
  }
}

class _BoxesManagerState extends State<BoxesManager> {
  List<String> boxes = [];

  @override
  void initState() {
    boxes.add(widget.startingBox);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
              onPressed: () {
                setState(() {
                  boxes.add('Another');
                });
              },
              child: Text('Add Box'))),
      Boxes(boxes)
    ]);
  }
}
