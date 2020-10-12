import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBarLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, szInf) {
        return SizedBox(
          height: szInf.deviceScreenType == DeviceScreenType.mobile ? 50 : 100,
          width: szInf.deviceScreenType == DeviceScreenType.mobile ? 50 : 100,
          child: Image.asset('assets/BOASVENDAS.png'),
        );
      },
    );
  }
}
