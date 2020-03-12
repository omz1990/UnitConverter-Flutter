import 'package:flutter/material.dart';
import 'package:unitconverter/unit.dart';

class ConverterScreen extends StatelessWidget {
  final Color color;
  final List<Unit> units;

  const ConverterScreen({Key key, this.color, this.units}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final unitWidgets = units.map((Unit unit) {
      return Container(
        color: color,
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              unit.name,
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Conversion ${unit.conversion}',
              style: Theme.of(context).textTheme.subtitle1,
            )
          ],
        ),
      );
    }).toList();

    return ListView(
      children: unitWidgets,
    );
  }
}