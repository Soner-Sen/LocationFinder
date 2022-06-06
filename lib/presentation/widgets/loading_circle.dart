import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mentz_app/const.dart';

class LoadingCircleWidget extends StatelessWidget {
  const LoadingCircleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitCircle(
        size: 100.0,
        duration: const Duration(seconds: 2),
        itemBuilder: (context, index) {
          final colors = [Colors.pink, secondary_color];
          final color = colors[index % colors.length];
          return DecoratedBox(
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          );
        },
      ),
    );
  }
}
