import 'package:flutter/material.dart';
import 'package:portfoliobruno/views/about/about_page.dart';
import 'package:portfoliobruno/views/center_view.dart';
import 'package:portfoliobruno/views/home/home_page.dart';
import 'package:portfoliobruno/views/portfolio/portfolio_page.dart';
import 'package:portfoliobruno/widgets/navigation_bar/navbar_item.dart';
import 'package:portfoliobruno/widgets/navigation_bar/navigation_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, szInfo) {
        return Scaffold(
          drawer: szInfo.deviceScreenType == DeviceScreenType.mobile ? BuildDrawer() : null,
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: NavigationBar(),
                ),
                CenterView(),
              ],
            ),
          ),
        );
      },
    );

  }
}

class BuildDrawer extends StatelessWidget {
  const BuildDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            height: 100,
            color: Colors.red
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: NavBarItem("HOME", page: HomePage()),
          ),
          ListTile(
            leading: Icon(Icons.report),
            title: NavBarItem("TRAJETÓRIA PROFISIONAL", page: AboutPage()),
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: NavBarItem("PROJETOS", page: PortfolioPage()),
          ),

        ],
      ),
    );
  }
}
