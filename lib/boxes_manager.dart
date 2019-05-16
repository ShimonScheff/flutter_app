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
              color: Theme.of(context).primaryColor,
              onPressed: () {
                setState(() {
                  boxes.add('Anothers');
                });
              },
              child: Text('Add Another Box', style: TextStyle(color: Colors.white),))),
      Boxes(boxes)
    ]);
  }
}
