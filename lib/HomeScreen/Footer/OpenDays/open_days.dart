import 'package:flutter/material.dart';
import 'package:shazclippers/ListViewJson/list_view_json.dart';
import 'package:shazclippers/Themes/darktheme.dart';


 

class OpenDays extends StatelessWidget {
  const OpenDays({super.key});

  @override
  Widget build(BuildContext context) {
    return 
Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.65,
            color: blackx.withOpacity(1),
            child: ListView.builder(
                itemCount: openDays.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, int index) {
                  final item = index;
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          openDays[item]['day']!,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(openDays[item]['time']!),
                        const SizedBox(
                          height: 5,
                        ),
                        const Divider(
                          color: Colors.white,
                          height: 6,
                        ),
                      ],
                    ),
                  );
                }),
          );
  }
}




