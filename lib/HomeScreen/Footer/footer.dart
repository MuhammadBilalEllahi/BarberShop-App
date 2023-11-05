import 'package:flutter/material.dart';
import 'package:shazclippers/HomeScreen/Footer/ContactUs/contact_us.dart';
import 'package:shazclippers/HomeScreen/Footer/CopyRight/copy_right.dart';
import 'package:shazclippers/States/button_launch_url.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ContactUs(),
          LaunchInstagram(),
          CopyRight()
      ],
    );
  }
}