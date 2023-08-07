import 'package:codigo_sem5_components/pages/alert_page.dart';
import 'package:codigo_sem5_components/pages/avatar_page.dart';
import 'package:codigo_sem5_components/pages/card_page.dart';
import 'package:codigo_sem5_components/pages/grid_page.dart';
import 'package:codigo_sem5_components/pages/input_page.dart';
import 'package:codigo_sem5_components/pages/list_page.dart';
import 'package:codigo_sem5_components/pages/selection_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: NetworkImage(
                      "https://malditopaparazzo.com.ar/wp-content/uploads/2021/05/David-Chicle.jpg",
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(5, 5),
                      blurRadius: 12,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Flutter Components",
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  letterSpacing: 0,
                ),
              ),
              const SizedBox(
                width: 160.0,
                child: Divider(
                  thickness: 1,
                ),
              ),
              _ItemDetail(
                title: "Avatar",
                subtitle: "Ir al detalle del avatar 0",
                toPage: const AvatarPage(),
              ),
              _ItemDetail(
                title: "Alert",
                subtitle: "Ir al detalle del avatar 1",
                toPage: const AlertPage(),
              ),
              _ItemDetail(
                title: "Card",
                subtitle: "Ir al detalle del avatar 1",
                toPage: const CardPage(),
              ),
              _ItemDetail(
                title: "Input",
                subtitle: "Ir al detalle del avatar 1",
                toPage: const InputPage(),
              ),
              _ItemDetail(
                title: "Selection",
                subtitle: "Ir al detalle del avatar 1",
                toPage: const SelectionPage(),
              ),
              _ItemDetail(
                title: "List",
                subtitle: "Ir al detalle del avatar 1",
                toPage: const ListPage(),
              ),
              _ItemDetail(
                title: "Grid",
                subtitle: "Ir al detalle del avatar 1",
                toPage: const GridPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ItemDetail extends StatelessWidget {
  _ItemDetail({
    required this.title,
    required this.subtitle,
    required this.toPage,
  });

  String title;
  String subtitle;
  Widget toPage;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            offset: const Offset(5, 5),
            blurRadius: 12,
          )
        ],
      ),
      child: ListTile(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => toPage),
        ),
        leading: const Icon(Icons.check_circle_outline),
        title: Text(
          title,
          style: GoogleFonts.poppins(),
        ),
        subtitle: Text(
          subtitle,
          style: GoogleFonts.poppins(),
        ),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
