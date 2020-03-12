import 'package:flutter/material.dart';
import 'package:unitconverter/unit.dart';

class ConverterScreen extends StatefulWidget {
  final Color color;
  final List<Unit> units;

  const ConverterScreen({Key key, this.color, this.units}) : super(key: key);

  @override
  _ConverterScreenState createState() => _ConverterScreenState();
}

class _ConverterScreenState extends State<ConverterScreen> {
  @override
  Widget build(BuildContext context) {
    final unitWidgets = widget.units.map((Unit unit) {
      return Container(
        color: widget.color,
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