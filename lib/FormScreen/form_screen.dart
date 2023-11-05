import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shazclippers/HomeScreen/Home/home_screen.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _fNameTextController = TextEditingController();
  final _lastNameTextController = TextEditingController();

  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();
  final _paymentController = TextEditingController();

  String? selectedBarbers;

  DateTime? _selectedDate;
  final _dateController = TextEditingController();

  final barbersList = ["Barber 1", "Barber 2", "Barber 3"];

  final servicesList = [
    "Top-notch haircuts",
    "Hair Treatments",
    "Basic Makeup",
    "Facials"
  ];

  String? selectedServices;

  @override
  Widget build(BuildContext context) {
    final Color textBoxColor = Theme.of(context).colorScheme.primary;

    selectDate(BuildContext context) async {
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

      _selectedDate = newSelectedDate;
      _dateController
        ..text = DateFormat.yMMMd().format(_selectedDate!)
        ..selection = TextSelection.fromPosition(TextPosition(
            offset: _dateController.text.length,
            affinity: TextAffinity.upstream));
        }

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: appBar,
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(5, 40, 5, 30),
                    child: Text(
                      "APPOINTMENT",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Form(
                      key: _formKey,
                      child: Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                                child: Text("Name"),
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    child: TextFormField(
                                      keyboardType: TextInputType.name,

                                      controller: _fNameTextController,
                                      decoration: InputDecoration(
                                          filled: true,
                                          fillColor: textBoxColor,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 0, horizontal: 10),
                                          border: const OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.horizontal(),
                                              gapPadding: 0)),
                                      // The validator receives the text that the user has entered.
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter some text';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Flexible(
                                    child: MyTextFormField(textBoxColor),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                                child: Text("Phone"),
                              ),
                              Flexible(
                                child: TextFormField(
                                  keyboardType: TextInputType.phone,
                                  controller: _phoneController,
                                  style: const TextStyle(fontSize: 15),
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: textBoxColor,
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 0, horizontal: 10),
                                      border: const OutlineInputBorder(
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
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                                child: Text("Email"),
                              ),
                              Flexible(
                                child: TextFormField(
                                  controller: _emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  style: const TextStyle(fontSize: 15),
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: textBoxColor,
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 0, horizontal: 10),
                                      border: const OutlineInputBorder(
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
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                                child: Text("Select Services"),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                child: DropdownButtonFormField(
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: textBoxColor,
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                vertical: 0, horizontal: 10),
                                        border: const OutlineInputBorder()),
                                    value: selectedServices,
                                    items: servicesList.map((e) {
                                      return DropdownMenuItem(
                                          value: e,
                                          child: Text(e,
                                              style: const TextStyle(
                                                fontSize: 15,
                                              )));
                                    }).toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        selectedServices = value.toString();
                                      });
                                    }),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                                child: Text("Barbers'"),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                child: DropdownButtonFormField(
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: textBoxColor,
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                vertical: 0, horizontal: 10),
                                        border: const OutlineInputBorder()),
                                    value: selectedBarbers,
                                    items: barbersList.map((e) {
                                      return DropdownMenuItem(
                                          value: e,
                                          child: Text(
                                            e,
                                            style:
                                                const TextStyle(fontSize: 15),
                                          ));
                                    }).toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        selectedBarbers = value.toString();
                                      });
                                    }),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                                child: Text("Date"),
                              ),
                              Flexible(
                                child: TextFormField(
                                  autofocus: false,

                                  onTap: () {
                                    selectDate(context);
                                  },
                                  keyboardType: TextInputType.datetime,
                                  controller: _dateController,
                                  style: const TextStyle(fontSize: 15),
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: textBoxColor,
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 0, horizontal: 10),
                                      border: const OutlineInputBorder(
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
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                                child: Text("Message"),
                              ),
                              Flexible(
                                child: TextFormField(
                                  keyboardType: TextInputType.multiline,
                                  controller: _messageController,
                                  style: const TextStyle(fontSize: 15),
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: textBoxColor,
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 0, horizontal: 10),
                                      border: const OutlineInputBorder(
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
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                                child: Text("Payment"),
                              ),
                              Flexible(
                                child: TextFormField(
                                  keyboardType:
                                      const TextInputType.numberWithOptions(),
                                  controller: _paymentController,
                                  style: const TextStyle(fontSize: 15),
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: textBoxColor,
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 0, horizontal: 10),
                                      border: const OutlineInputBorder(
                                        // borderSide: BorderSide(
                                        //   color: Colors.grey,

                                        // ),
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
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              const MaterialStatePropertyAll(
                                            Colors.black12,
                                          ),
                                          overlayColor:
                                              const MaterialStatePropertyAll(
                                                  Colors.amber),
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                              borderRadius:
                                                  const BorderRadius.horizontal(),
                                              side: BorderSide(
                                                  color: Colors.grey.shade600,
                                                  width: 2.0,
                                                  style: BorderStyle.solid,
                                                  strokeAlign: 1),
                                            ),
                                          )),
                                      onPressed: () {
                                        // Validate returns true if the form is valid, or false otherwise.
                                        if (_formKey.currentState!.validate()) {
                                          // If the form is valid, display a snackbar. In the real world,
                                          // you'd often call a server or save the information in a database.
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                                content:
                                                    Text('Processing Data')),
                                          );
                                        }
                                      },
                                      child: const Text(
                                        'Submit',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),

                  //   const Text(""),
                  //   TextFormField(),

                  //   const Text("Time"),
                  // Row(
                  //     children: [
                  //       TextFormField(),
                  //       TextFormField(),
                  //     ],
                  //   ),

                  // Row(
                  //     children: [
                  //       TextFormField(),
                  //       TextFormField(),
                  //     ],
                  //   ),
                ]),
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  TextFormField MyTextFormField(Color textBoxColor) {
    return TextFormField(
                                    keyboardType: TextInputType.name,

                                    controller: _lastNameTextController,
                                    style: const TextStyle(fontSize: 15),
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: textBoxColor,
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                vertical: 0, horizontal: 10),
                                        border: const OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.horizontal(),
                                          gapPadding: 50,
                                        )),
                                    // The validator receives the text that the user has entered.
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },
                                  );
  }
}
