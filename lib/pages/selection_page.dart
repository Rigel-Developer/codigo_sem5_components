import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SelectionPage extends StatefulWidget {
  const SelectionPage({super.key});

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  final TextEditingController _controller = TextEditingController();
  int selectedValue = 0;
  selectedDate() async {
    DateTime? selectedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2030));
    if (selectedDate != null) {
      String formattedDate = DateFormat('yyyy-MM-dd').format(selectedDate);

      _controller.text = formattedDate;
    }
  }

  List<DropdownMenuItem<int>> getItems() {
    List<String> heroes = ["batman", "Superman", "Flash", "hulk"];
    List<DropdownMenuItem<int>> items = [];
    for (int i = 0; i < heroes.length; i++) {
      items.add(
        DropdownMenuItem(
          value: i,
          child: Text(heroes[i]),
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Selection Page',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your username',
              ),
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
                selectedDate();
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.06),
                      blurRadius: 12,
                      offset: const Offset(4, 4),
                    ),
                  ]),
              child: DropdownButton(
                value: selectedValue,
                icon: const Icon(Icons.arrow_drop_down_circle),
                isExpanded: true,
                underline: Container(),
                hint: const Text('Select Item'),
                items: getItems(),
                onChanged: (int? value) {
                  selectedValue = value!;
                  setState(() {});
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
