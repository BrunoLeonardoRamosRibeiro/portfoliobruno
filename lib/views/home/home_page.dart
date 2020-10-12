import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  final String texto = 'Analista de Sistemas pela Estácio de Sá, ' +
      'pós graduando em Planejamento Empresarial e Marketing e ' +
      'Tutoria em Educação à Distância e Docência no Ensino Superior. \n' +
      '\nDesenvolvedor desde 1993.';

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, szInf) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50,
                  backgroundImage: AssetImage('assets/me.jpg'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Bruno Leonardo Ramos Ribeiro",
                style: GoogleFonts.montserrat(
                    fontSize: 18, ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 4, left: 32, right: 32, bottom: 8),
                child: Container(
                  height: 200,
                  width: 400,
                  child: Text(
                    texto,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.indieFlower(
                      fontSize: szInf.deviceScreenType == DeviceScreenType.mobile ? 16 : 18,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                //width: 300,
                //color: Colors.red,
                child: _swipeHorizontal(),
              ),
            ],
          ),
        );
      },
    );
  }

  _swipeHorizontal() {
    List skills = [
      "assets/FLUTTER.png",
      "assets/DART.png",
      "assets/RADSTUDIO.png",
      "assets/DOTNET.png",
      "assets/FIGMA.png",
    ];

    List skillTitle = [
      "Flutter",
      "Dart",
      "Rad Studio Delphi/Firemonkey",
      ".Net",
      "Figma Prototipação",
    ];

    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 100,
          width: 60,
          child: Column(
            children: [
              new Image.asset(
                skills[index],
                fit: BoxFit.contain,
                height: 75,
                width: 75,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                skillTitle[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );
      },
      itemCount: skills.length,
      viewportFraction: 0.8,
      scale: 0.9,
      autoplay: true,
    );
  }
}
