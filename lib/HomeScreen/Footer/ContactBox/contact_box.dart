import 'package:flutter/material.dart';
import 'package:shazclippers/States/button_launch_url.dart';
import 'package:shazclippers/Themes/darktheme.dart';

    const EdgeInsets textEdgeInsets = EdgeInsets.fromLTRB(8, 8, 0, 0);


class ContactBox extends StatelessWidget {
  const ContactBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.2,
            color: blackx.withOpacity(1),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.signal_cellular_0_bar_sharp,
                            color: silver,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Contact Us",
                            style: TextStyle(
                              color: silver,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "LONDON",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 193, 191, 191)
                                .withAlpha(255)),
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
                                "XYZ HairDresser, 123 St, Karachi 123\n123, Pakistan",
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
                              "+134567891234",
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
                        Icons.email_outlined,
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
                              "info@hector.com",
                              style: TextStyle(
                                  fontSize: 13.0,
                                  fontFamily: "Raleway",
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Book appointment",
                              style: TextStyle(
                                  fontSize: 10.0,
                                  fontFamily: "Raleway",
                                  color: Colors.grey.shade300),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const LaunchInstagramSmallButton(),
                  ]),
            ),
          );
  }
}