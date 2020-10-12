import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'MINHA TRAJETÓRIA PROFISSIONAL',
              style: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          /* DATASYSTEM */
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineX: 0.1,
            isFirst: true,
            indicatorStyle: const IndicatorStyle(
              width: 20,
              color: Colors.blue,
            ),
            topLineStyle: const LineStyle(
              color: Colors.blue,
              width: 1,
            ),
            rightChild: Container(
              margin: EdgeInsets.all(10),
              child: TextoTile(
                  firma:
                      '- Datasystem Engenharia de Sistemas Ltda (Imperatriz/MA)\n',
                  ocupacao:
                      'Programador/freelancer e Consultor de Negócios (desde 2015 e atualmente)\n',
                  descricao:
                      '* Responsável pela prospecção de novos clientes\n * Desenvolvedor de aplicativos móveis desenvolvidos sob encomenda.'),
            ),
          ),
          const TimelineDivider(
            begin: 0.1,
            end: 0.5,
            thickness: 1,
            color: Colors.blue,
          ),
          /* MAX CLIN  */
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineX: 0.5,
            topLineStyle: const LineStyle(
              color: Colors.blue,
              width: 1,
            ),
            bottomLineStyle: const LineStyle(
              color: Colors.blue,
              width: 1,
            ),
            indicatorStyle: const IndicatorStyle(
              width: 20,
              color: Colors.blue,
            ),
            rightChild: Container(
              margin: EdgeInsets.all(10),
              child: TextoTile(
                firma: 'MAXCLIN Indústria e Comércio (Bacabal/MA)\n',
                ocupacao:
                    'Gerente Comercial e Vendas (04/2006-12/2011 e atualmente desde 2016)\n',
                descricao: '* Reporta-se à Diretoria Geral\n' +
                    '* Desenvolvimento e implantação de sistema de informações gerenciais utilizando plataforma Windows e linguagem de programação Delphi, que possibilitou a análise dos dados de venda e permitiu a adoção de avaliação de desempenho dos vendedores\n'
                        '* Planejamento, coordenação e controle das atividades de venda e propaganda,\n  contando com uma equipe de 06 (seis) vendedores externos',
              ),
            ),
          ),
          const TimelineDivider(
            begin: 0.1,
            end: 0.5,
            thickness: 1,
            color: Colors.blue,
          ),
          /* TIL CEREALISTA */
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineX: 0.1,
            isFirst: false,
            indicatorStyle: const IndicatorStyle(
              width: 20,
              color: Colors.blue,
            ),
            topLineStyle: const LineStyle(
              color: Colors.blue,
              width: 1,
            ),
            rightChild: Container(
              margin: EdgeInsets.all(10),
              child: TextoTile(
                firma: 'Til Cerealista Ltda (Bacabal/MA)\n',
                ocupacao:
                    'Gerente Comercial e Administrativo (01/2012 - 09/2015) \n',
                descricao:
                    '* Reportava-se á Gerência Geral. \n * Responsável por equipe de vendas com 9 vendedores externos.\n' +
                        '* Coordenador de reuniões de produtividade.\n * Desenvolvimento de aplicativo para força de vendas da empresa.\n' +
                        '* Contratação e avaliação de vendedores',
              ),
            ),
          ),
          const TimelineDivider(
            begin: 0.1,
            end: 0.5,
            thickness: 1,
            color: Colors.blue,
          ),
          /* PAET  */
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineX: 0.5,
            topLineStyle: const LineStyle(
              color: Colors.blue,
              width: 1,
            ),
            bottomLineStyle: const LineStyle(
              color: Colors.blue,
              width: 1,
            ),
            indicatorStyle: const IndicatorStyle(
              width: 20,
              color: Colors.blue,
            ),
            rightChild: Container(
              margin: EdgeInsets.all(10),
              child: TextoTile(
                firma:
                    'PAET – Projetos, Assessoria Empresarial e Técnica Ltda\n',
                ocupacao: 'Sócio Proprietário (04/1999 a 03/2006)\n',
                descricao:
                    '* Elaboração de propostas de crédito rural junto aos bancos oficiais do Governo Federal (BNB, Basa e BB).\n' +
                        '* Coordenação e planejamento das atividades administrativas da empresa',
              ),
            ),
          ),
          const TimelineDivider(
            begin: 0.1,
            end: 0.5,
            thickness: 1,
            color: Colors.blue,
          ),
          /* GERÊNCIA REGIONAL */
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineX: 0.1,
            isFirst: false,
            indicatorStyle: const IndicatorStyle(
              width: 20,
              color: Colors.blue,
            ),
            topLineStyle: const LineStyle(
              color: Colors.blue,
              width: 1,
            ),
            rightChild: Container(
              margin: EdgeInsets.all(10),
              child: TextoTile(
                firma: 'Gerência de Desenvolvimento Regional (Bacabal/MA)\n',
                ocupacao: 'Chefe do Setor de Informática (01/1999 a 12/2002)\n',
                descricao:
                    '* Responsável pelos sistemas de informações regionais nas áreas de saúde, educação, assistência social e produção agropecuária\n' +
                        '* Implantação de sistema informatizado para protocolo e controle de correspondências emitidas/recebidas\n',
              ),
            ),
          ),
          const TimelineDivider(
            begin: 0.1,
            end: 0.5,
            thickness: 1,
            color: Colors.blue,
          ),
          /* PROASTEC  */
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineX: 0.5,
            topLineStyle: const LineStyle(
              color: Colors.blue,
              width: 1,
            ),
            bottomLineStyle: const LineStyle(
              color: Colors.blue,
              width: 1,
            ),
            indicatorStyle: const IndicatorStyle(
              width: 20,
              color: Colors.blue,
            ),
            rightChild: Container(
              margin: EdgeInsets.all(10),
              child: TextoTile(
                firma: 'PROASTEC – Projetos e Assistência Técnica Ltda \n',
                ocupacao: 'Projetista (01/1996 a 12/1998)\n',
                descricao:
                    '* Elaboração de propostas de crédito rural junto aos bancos oficiais do Governo Federal (BNB, Basa e BB).\n',
              ),
            ),
          ),
          const TimelineDivider(
            begin: 0.1,
            end: 0.5,
            thickness: 1,
            color: Colors.blue,
          ),
          /* BNB */
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineX: 0.1,
            isLast: true,
            indicatorStyle: const IndicatorStyle(
              width: 20,
              color: Colors.blue,
            ),
            topLineStyle: const LineStyle(
              color: Colors.blue,
              width: 1,
            ),
            rightChild: Container(
              margin: EdgeInsets.all(10),
              child: TextoTile(
                firma: 'Banco do Nordeste do Brasil S/A (Bacabal/MA) \n',
                ocupacao: 'Menor Estagiário (01/1992 a 12/1995)\n',
                descricao: '* Atendimento a clientes externos\n' +
                    '* Elaboração de contratos de financiamento (cédulas de crédito rural/comercial/industrial)\n' +
                    '* Cálculo de viabilidade econômico-financeira de propostas de crédito\n' +
                    '* Digitação de movimento contábil da agência',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextoTile extends StatelessWidget {
  final String firma;
  final String ocupacao;
  final String descricao;

  const TextoTile({
    Key key,
    this.firma,
    this.ocupacao,
    this.descricao,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: firma,
        style: TextStyle(fontWeight: FontWeight.bold),
        children: <TextSpan>[
          TextSpan(
              text: ocupacao,
              style: GoogleFonts.indieFlower(fontWeight: FontWeight.bold)),
          TextSpan(
              text: descricao,
              style: GoogleFonts.indieFlower(color: Colors.black)),
        ],
      ),
    );
  }
}

class TextoDois extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "- Data System Informática Ltda - Imperatriz/MA\n",
        style: TextStyle(fontWeight: FontWeight.bold),
        children: <TextSpan>[
          TextSpan(
              text: "Programador/freelancer e Consultor de Negócios.\n " +
                  "Responsável pela prospecção de novos clientes e responsável por aplicativos de supervisão desenvolvido sob encomenda. ",
              style: GoogleFonts.indieFlower()),
        ],
      ),
    );
  }
}
