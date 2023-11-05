import 'package:flutter/material.dart';


const TextStyle textStyleForButtonText = TextStyle(
    color: Color.fromARGB(255, 255, 255, 255),
    // fontFamily: 'RedRoseLight',
    fontWeight: FontWeight.normal,
    fontSize: 12,
    height: 1);


class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            color: const Color.fromARGB(18, 18, 18, 1).withOpacity(1),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text("About US", style: textStyleForButtonText),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Services", style: textStyleForButtonText),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Price", style: textStyleForButtonText),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Team", style: textStyleForButtonText),
                ),
                TextButton(
                  onPressed: () {},
                  child:
                      const Text("Contact Us", style: textStyleForButtonText),
                ),
              ],
            ),
          );
  }
}