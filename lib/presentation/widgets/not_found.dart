import 'package:flutter/material.dart';
import 'package:mentz_app/const.dart';

class NotFoundWidget extends StatelessWidget {
  const NotFoundWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(NotFound_GIF),
            const Text(
              LOCATION_NOTFOUND,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
