import 'package:flutter/material.dart';

class MainForm extends StatefulWidget {
  const MainForm({super.key});

  @override
  State<MainForm> createState() => MainFormState();
}

class MainFormState extends State<MainForm> {
  final _formKey = GlobalKey<FormState>();
  final _fNameTextController = TextEditingController();
  final _lastNameTextController = TextEditingController();

  final _subjectController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Color textBoxColor = Theme.of(context).colorScheme.primary;

    return Form(
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
                    // const Flexible(
                    //   child: TextField()
                    // ),
                    Flexible(
                      child: TextFormField(
                        keyboardType: TextInputType.name,

                        controller: _fNameTextController,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: textBoxColor,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 10),
                            border: const OutlineInputBorder(
                                borderRadius: BorderRadius.horizontal(),
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
                      child: TextFormField(
                        keyboardType: TextInputType.name,

                        controller: _lastNameTextController,
                        style: const TextStyle(fontSize: 15),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: textBoxColor,
                            contentPadding: const EdgeInsets.symmetric(
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
                  ],
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
                        contentPadding: const EdgeInsets.symmetric(
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
                  child: Text("Subject"),
                ),
                Flexible(
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: _subjectController,
                    style: const TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: textBoxColor,
                        contentPadding: const EdgeInsets.symmetric(
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
                    maxLines: 5,
                    controller: _messageController,
                    style: const TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: textBoxColor,
                        contentPadding: const EdgeInsets.symmetric(
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: const MaterialStatePropertyAll(
                              Colors.black12,
                            ),
                            overlayColor:
                                const MaterialStatePropertyAll(Colors.amber),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: const BorderRadius.horizontal(),
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
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')),
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
        ));
  }
}
