import 'package:flutter/material.dart';
import 'package:portfoliobruno/views/about/about_page.dart';
import 'package:portfoliobruno/views/home/home_page.dart';
import 'package:portfoliobruno/views/portfolio/portfolio_page.dart';
import 'package:portfoliobruno/widgets/navigation_bar/navbar_item.dart';
import 'package:portfoliobruno/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: NavBarLogo(),
            onTap: (){
              Scaffold.of(context).openDrawer();
            },
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem("HOME", page: HomePage()),
              NavBarItem("TRAJETÓRIA", page: AboutPage()),
              NavBarItem("PROJETOS", page: PortfolioPage()),
              NavBarItem("CONTATO", page: HomePage()),
            ],
          ),
        ],
      ),
    );
  }
}
