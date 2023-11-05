import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shazclippers/FormScreen/form_screen.dart';
import 'package:shazclippers/Themes/darktheme.dart';

class HeroBanner extends StatelessWidget {
  const HeroBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: MediaQuery.of(context).size.height / 1.75,
            width:MediaQuery.of(context).size.width ,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/backgroundImage.jpeg',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                ),
                Image.asset(
                  'assets/images/kindaLinearGradient.png',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height / 1.75,
                  width: MediaQuery.of(context).size.width,
                  color: blackx.withOpacity(0.8),
                  colorBlendMode: BlendMode.modulate,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Animate (
                        effects:  const [
                          FadeEffect(

                          ),
                          
                        ],
                        child: const Text(
                          "BEST BARBER",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Text(
                        "SHOP",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: silver),
                      ),
                      const Text(
                        "EAST LONDON",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const FormScreen()));
                        },
                        style: ButtonStyle(
                            backgroundColor: const MaterialStatePropertyAll(
                              Colors.black12,
                            ),
                            overlayColor:
                                const MaterialStatePropertyAll(silver),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              const RoundedRectangleBorder(
                                borderRadius: BorderRadius.horizontal(),
                                side: BorderSide(
                                    color: silver,
                                    width: 2.0,
                                    style: BorderStyle.solid,
                                    strokeAlign: 1),
                              ),
                            )),
                        child: const Text(
                          "BOOK AN APPOINMENT",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}