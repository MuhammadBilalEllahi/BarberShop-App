import 'package:flutter/material.dart';
import 'package:shazclippers/Themes/darktheme.dart';

class CopyRight extends StatelessWidget {
  const CopyRight({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
            color: const Color.fromARGB(18, 18, 18, 1).withOpacity(1),
            height: 60,
            child: const Column(
              children: [
                Divider(
                  color: silver,
                  height: 10,
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Copyright © 2023 Hector | Powered by AdX")
              ],
            ),
          );
  }
}