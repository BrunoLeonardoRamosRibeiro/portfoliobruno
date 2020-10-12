import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoliobruno/models/app_model.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final Widget page;

  NavBarItem(this.title, {this.page});

  @override
  Widget build(BuildContext context) {

    return ResponsiveBuilder(
      builder: (context, szInfo) {

        return Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: (){

              AppModel app = Provider.of<AppModel>(context, listen: false);
              app.setPage(page);

              if (szInfo.deviceScreenType == DeviceScreenType.mobile){
                //Navigator.of(context).pop();
                Scaffold.of(context).openEndDrawer();
              }

            },
            child: Container(
              color: Colors.transparent,
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Text(title, style: GoogleFonts.montserrat(),),
            ),
          ),
        );
      },
    );


  }
}
