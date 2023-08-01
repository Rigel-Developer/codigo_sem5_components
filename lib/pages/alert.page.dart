import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Soy una alerta"),
          content: Text("Hola mundo"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Cancelar",
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Aceptar",
              ),
            ),
          ],
        );
      },
    );
  }

  showAlert2(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          // contentPadding: EdgeInsets.all(10.0),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Soy una alerta",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const Divider(
                thickness: 0.7,
              ),
              const SizedBox(
                height: 8,
              ),
              const CircleAvatar(
                backgroundColor: Colors.red,
                backgroundImage: NetworkImage(
                  "https://malditopaparazzo.com.ar/wp-content/uploads/2021/05/David-Chicle.jpg",
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Hola este es el container de la alerta",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.black54,
                  fontSize: 13,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Cancelar",
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Aceptar",
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showAlert(context);
              },
              child: Text(
                "Mostrar alerta",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                showAlert2(context);
              },
              child: Text(
                "Mostrar alerta",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
