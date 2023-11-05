import 'package:flutter/material.dart';
import 'package:shazclippers/Themes/darktheme.dart';

const EdgeInsets textEdgeInsets = EdgeInsets.fromLTRB(8, 8, 0, 0);

class ContactBoxBlack extends StatelessWidget {
  const ContactBoxBlack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 250,
      color: black.withOpacity(0.9),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/whatsappLogo.png",
                width: 20.0,
                height: 20.0,
                color: silver,
              ),
              label: Padding(
                padding: textEdgeInsets,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "+107456388858",
                      style: TextStyle(
                          fontSize: 13.0,
                          fontFamily: "Raleway",
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Customer Care",
                      style: TextStyle(
                          fontSize: 10.0,
                          fontFamily: "Raleway",
                          color: Colors.grey.shade300),
                    ),
                  ],
                ),
              ),
            ),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.location_searching,
                  color: silver,
                ),
                label: Padding(
                  padding: textEdgeInsets,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "ShazClippers HairDresser, 49 Cavell St, London E1\n2BP, United Kingdom",
                        style: TextStyle(
                            fontSize: 13.0,
                            fontFamily: "Raleway",
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Head Office",
                        style: TextStyle(
                            fontSize: 10,
                            fontFamily: "Raleway",
                            color: Colors.grey.shade300),
                      ),
                    ],
                  ),
                )),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.access_time,
                color: silver,
              ),
              onHover: (value) {
                const TextStyle(color: silver);
              },
              label: Padding(
                padding: textEdgeInsets,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Open Monday-Sunday",
                      style: TextStyle(
                          fontSize: 13.0,
                          fontFamily: "Raleway",
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      "11 am - 8 pm(Last Order 6pm)",
                      style: TextStyle(
                          fontSize: 10.0,
                          fontFamily: "Raleway",
                          color: Colors.grey.shade300),
                    ),
                  ],
                ),
              ),
            ),
          ]),
    );
  }
}
