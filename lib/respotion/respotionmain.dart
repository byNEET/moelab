import 'package:flutter/material.dart';
import 'package:moelab/respotion/ui/screen/lansekaphome.dart';
import 'package:moelab/respotion/ui/screen/portaithome.dart';

class RespotionMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? PortaitHome()
              : LansekapHome();
        },
      ),
    );
  }
}
