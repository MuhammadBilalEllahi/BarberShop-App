import 'package:flutter/material.dart';
import 'package:shazclippers/Themes/darktheme.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return           Container(
            color: blackx.withOpacity(1),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: SizedBox(
                height: 400,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: silver,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Our Story",
                                  style: TextStyle(
                                    color: silver,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "About Us",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 193, 191, 191)
                                  .withAlpha(255)),
                        ),
                      ),
                      const Divider(
                        color: silver,
                        height: 5,
                      ),
                      const Divider(
                        color: silver,
                        height: 2,
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(15, 22, 15, 10),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Welcome to Shaz Clippers, located in the vibrant heart of East London, where we have been proudly serving our valued customers for the past 20 years. We are your go-to destination for all your salon and grooming needs, providing exceptional services that will leave you looking and feeling your best.",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'RedRoseLight',
                                  color: Color(0xffADADAD)),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Beyond our exceptional services, we also place a strong emphasis on maintaining cleanliness and hygiene. We adhere to strict sanitization practices, using only top-quality products and equipment. Your safety and well-being are our top priorities, and we go the extra mile to provide a clean.",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'RedRoseLight',
                                  color: Color(0xffADADAD)),
                            )
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
          );
  }
}