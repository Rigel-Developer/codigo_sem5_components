import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool showPassword = true;

  final TextEditingController _textEditingController =
      TextEditingController(text: "Hola mundo");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Input Page',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            8.0,
          ),
          child: Column(
            children: [
              TextField(
                style: const TextStyle(
                  color: Colors.red,
                  backgroundColor: Color(0xFFE0E0E0),
                ),
                decoration: const InputDecoration(
                  // border: OutlineInputBorder(),
                  labelText: 'Nombre',
                  hintText: 'Ingrese su nombre',
                  hintStyle: TextStyle(
                    color: Colors.green,
                  ),
                  // label: Text(
                  //   "Nombre",
                  // ),
                  icon: Icon(
                    Icons.location_on,
                  ),
                  prefixIcon: Icon(
                    Icons.star,
                  ),
                  suffixIcon: Icon(
                    Icons.check_circle_outline,
                  ),
                ),
                onChanged: (value) {
                  print("value $value");
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Buscar producto",
                  prefixIcon: const Icon(
                    Icons.search,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.red,
                      // width: 1,
                    ),
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.green,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.07),
                      offset: const Offset(5, 5),
                      blurRadius: 12,
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Buscar producto",
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.black38,
                      fontSize: 18,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    suffixIcon: Container(
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(
                          14,
                        ),
                      ),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 3),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                        // width: 1,
                      ),
                      borderRadius: BorderRadius.circular(
                        14,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                        // width: 1,
                      ),
                      borderRadius: BorderRadius.circular(
                        14,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: showPassword,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  suffix: IconButton(
                    icon: showPassword
                        ? const Icon(
                            Icons.visibility_off,
                          )
                        : const Icon(
                            Icons.visibility,
                          ),
                    onPressed: () {
                      showPassword = !showPassword;
                      setState(() {});
                    },
                  ),
                  hintText: "Contraseña",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                style: GoogleFonts.poppins(
                  color: Colors.red,
                  fontSize: 20,
                ),
                controller: _textEditingController,
                decoration: const InputDecoration(
                  counterText: "", // Oculta el contador de caracteres
                ),
                onTap: () {
                  print("onTap");
                },
                maxLength: 8,
                cursorColor: Colors.red,
                readOnly: false,
                onSubmitted: (value) => print("onSubmitted $value"),
                keyboardType: TextInputType.text,
                onChanged: (value) => print("onChanged $value"),
              ),
              ElevatedButton(
                onPressed: () {
                  print(_textEditingController.text);
                },
                child: const Text(
                  "Enviar",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  _textEditingController.clear();
                },
                child: const Text(
                  "limpiar",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
