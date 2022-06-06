import 'package:flutter/material.dart';

import '../../../const.dart';

class NetworkErrorWidget extends StatelessWidget {
  const NetworkErrorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
        Icon(
          Icons.error,
          color: Colors.redAccent,
          size: 50,
        ),
        SizedBox(height: 20),
        Text(NETWORK_ERROR_MESSAGE),
      ]),
    );
  }
}
