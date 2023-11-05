import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const TestPickerWidget());
}

class TestPickerWidget extends StatefulWidget {
  const TestPickerWidget({super.key});

  @override
  _TestPickerWidgetState createState() => _TestPickerWidgetState();
}

class _TestPickerWidgetState extends State<TestPickerWidget> {
  DateTime? _selectedDate;
  final _dateController = TextEditingController();

  _selectDate(BuildContext context) async {
    DateTime? newSelectedDate = await showDatePicker(
        context: context,
        initialDate: _selectedDate ?? DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2040),
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData.dark().copyWith(
              colorScheme: const ColorScheme.dark(
                primary: Colors.black,
                onPrimary: Colors.white,
                surface: Colors.black,
                onSurface: Colors.white,
              ),
              dialogBackgroundColor: Colors.grey.shade800,
            ),
            child: child!,
          );
        });

    if (newSelectedDate != null) {
      _selectedDate = newSelectedDate;
      _dateController
        ..text = DateFormat.yMMMd().format(_selectedDate!)
        ..selection = TextSelection.fromPosition(TextPosition(
            offset: _dateController.text.length,
            affinity: TextAffinity.upstream));
    }
  }

  @override
  Widget build(BuildContext context) {
    throw MaterialApp(
        home: Scaffold(
      body: Center(
        child: TextFormField(
          autofocus: false,

          onTap: () {
            _selectDate(context);
          },
          keyboardType: TextInputType.datetime,
          controller: _dateController,
          style: const TextStyle(fontSize: 15),
          decoration: const InputDecoration(
              filled: true,
              fillColor: Colors.black,
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.horizontal(),
                gapPadding: 50,
              )),
          // The validator receives the text that the user has entered.
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
        ),
      ),
    ));
  }
}
