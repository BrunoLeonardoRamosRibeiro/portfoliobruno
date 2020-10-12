import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 100,
      color: Colors.grey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              child: Center(
                child: Text(
                  "MEUS PROJETOS",
                  style: GoogleFonts.montserrat(
                      fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white,  ),
                ),
              ),
            ),
            _gridProjetos(),
          ],
        ),
      ),
    );
  }

  _gridProjetos() {
    final List<Map<String, dynamic>> projetos = [
      {
        "projeto": "Conferir Estoque",
        "imagem": "assets/CONFERIR.png",
        "descricao": "Aplicativo para Conferência de Estoques",
      },
      {
        "projeto": "Boas Vendas",
        "imagem": "assets/BOASVENDAS.png",
        "descricao": "Força de Vendas",
      },
      {
        "projeto": "Lima Distribuidora",
        "imagem": "assets/LIMA.png",
        "descricao": "Dashboard Lima Distribuidora - Imperatriz, Maranhão, Brasil",
      },
    ];

    return ResponsiveBuilder(
      builder: (context, szInf) {
        return GridView.builder(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          itemCount: projetos.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:
                szInf.deviceScreenType == DeviceScreenType.mobile ? 1 : 3,
          ),
          itemBuilder: (BuildContext context, int index) {
            return new InkWell(
              onTap: (){
                // nada
              },
              child: Card(
                color: Colors.white,
                shadowColor: Colors.black,
                margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                elevation: 6,
                child: GridTile(
                  child: Container(
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16, left: 24, right: 24, bottom: 24),
                      child: Image.asset(
                        projetos[index]["imagem"],
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  footer: Container(
                    margin: const EdgeInsets.only(left: 16, right: 16),
                    height: 80,
                    color: Colors.transparent,
                    child: Center(
                      child: Text(
                        projetos[index]["descricao"],
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
