import 'package:flutter/material.dart';
import 'package:smart_select/smart_select.dart';
import '../options.dart' as options;

class FeaturesSingleProg extends StatefulWidget {
  @override
  _FeaturesSingleProgState createState() => _FeaturesSingleProgState();
}

class _FeaturesSingleProgState extends State<FeaturesSingleProg> {
  String _day = 'fri';
  // String _month = 'apr';

  void _showModal(BuildContext context) async {
    SmartSelect smartSelect = SmartSelect<String>.single(
      title: 'Days',
      value: _day,
      options: options.days,
      // onChange: (String val) {},
      onChange: (dynamic val) => setState(() => _day = val),
    );
    final results = await SmartSelectTrigger.showSmartModal(context: context, smartSelect: smartSelect);
    print('modal results: $results');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(height: 7),
        FlatButton(
          child: Text('Show'),
          onPressed: () => _showModal(context),
        ),
        SmartSelect<String>.single(
          title: 'Days',
          value: _day,
          options: options.days,
          onChange: (val) => setState(() => _day = val),
        ),
        Container(height: 7),
      ],
    );
  }
}
