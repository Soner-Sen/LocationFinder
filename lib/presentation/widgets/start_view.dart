import 'package:flutter/material.dart';

import '../../../const.dart';

class StartView extends StatelessWidget {
  const StartView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 250, width: 250, child: Image.network(StartView_GIF))
      ],
    ));
  }
}
