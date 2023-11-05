
import 'package:flutter/material.dart';
import 'package:shazclippers/Themes/darktheme.dart';
import 'package:url_launcher/url_launcher.dart';

void _launchInstagram() async {
  var url = Uri.parse(
      'https://www.instagram.com/shazclippers/'); 
  if (await canLaunchUrl(url)) {
    await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    );
  } else {
    throw 'Could not launch Instagram';
  }
}

class LaunchInstagram extends StatefulWidget {
  const LaunchInstagram({super.key});

  @override
  State<LaunchInstagram> createState() => _LaunchInstagramState();
}

class _LaunchInstagramState extends State<LaunchInstagram> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(18, 18, 18, 1).withOpacity(1),
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _launchInstagram();
                  });
                },
                style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                      silver,
                    ),
                    overlayColor: const MaterialStatePropertyAll(silver),
                    shape: MaterialStateProperty.all<ContinuousRectangleBorder>(
                      const ContinuousRectangleBorder(
                        borderRadius: BorderRadius.horizontal(),
                        side: BorderSide(
                            color: silver,
                            width: 20.0,
                            style: BorderStyle.solid,
                            strokeAlign: 0),
                      ),
                    )),
                child: SizedBox(
                  width: 140,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/instagramLogo.png',
                        width: 20,
                        height: 20,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Instagram",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                )),
          ]),
    );
  }
}




class LaunchInstagramSmallButton extends StatefulWidget {
  const LaunchInstagramSmallButton({super.key});

  @override
  State<LaunchInstagramSmallButton> createState() => _LaunchInstagramSmallButtonState();
}

class _LaunchInstagramSmallButtonState extends State<LaunchInstagramSmallButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      color: const Color.fromARGB(18, 18, 18, 1).withOpacity(1),
      height: 35,
      width: 105,
      child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _launchInstagram();
                          });
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
                          "Instagram",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ));
  }
  
}


