import 'package:flutter/material.dart';
import 'package:shazclippers/Themes/darktheme.dart';



final barberData = [
      {"name": "Shaz", "designation": "Barber"},
      {"name": "T", "designation": "Barber"},
      {"name": "H", "designation": "Barber"},
      {"name": "Shah", "designation": "Barber"},
      {"name": "Malik", "designation": "Barber"},
    ];

class BarberImage extends StatelessWidget {
  const BarberImage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isOver800 = MediaQuery.of(context).size.width > 800;
    return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 2.6,
            color: blackx.withOpacity(1),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
                itemCount: barberData.length,
                itemBuilder: (context, int index) {
                  return Flex(
                    direction: isOver800 ? Axis.vertical :Axis.vertical,//sleepy
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 300,
                        height: 400,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/barberDisplay.png'))),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 100),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Mr. (${barberData[index]['name']}) ",
                              style: const TextStyle(
                                fontSize: 22
                              ),),
                              const SizedBox(height: 5,),
                              Text('${barberData[index]['designation']}',
                              style: const TextStyle(
                                fontWeight: FontWeight.w100
                              ),),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30,),
                    ],
                  );
                  
                }
                                           

                ),
          );
  }
}