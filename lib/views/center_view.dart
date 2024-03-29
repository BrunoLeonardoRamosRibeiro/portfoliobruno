import 'package:flutter/material.dart';
import 'package:portfoliobruno/models/app_model.dart';
import 'package:provider/provider.dart';

class CenterView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    AppModel app = Provider.of<AppModel>(context, listen: true);

    return Container(
      child: app.page,
    );
  }
}
