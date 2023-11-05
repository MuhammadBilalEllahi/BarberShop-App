import 'package:flutter/material.dart';
import 'package:shazclippers/Themes/darktheme.dart';

class ImagesDisplay extends StatelessWidget {
  const ImagesDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    bool isOver800 = MediaQuery.of(context).size.width > 800;
   double height = isOver800 ?MediaQuery.of(context).size.width / 4 : MediaQuery.of(context).size.width / 3;

    return Flex(
      direction: Axis.vertical,
      children: [
        Stack(
          children: [
            Flex(
              direction: Axis.vertical,
              children: [
                Flex(
                  direction: Axis.horizontal,
                  children: [
                    Flex(
                      direction:  isOver800 ? Axis.horizontal: Axis.vertical,
                      children: [
                        Image.asset(
                          'assets/displayimages/1.jpeg',
                          width: isOver800 ?MediaQuery.of(context).size.width / 4 : MediaQuery.of(context).size.width / 2,
                          height: height ,
                          fit: BoxFit.fill,
                          filterQuality: FilterQuality.high,
                        ),
                        Image.asset(
                          'assets/displayimages/2.jpeg',
                          width: isOver800 ?MediaQuery.of(context).size.width / 4 : MediaQuery.of(context).size.width / 2,
                          height: height,
                          fit: BoxFit.fill,
                          filterQuality: FilterQuality.high,
                        )
                      ],
                    ),
                    Flex(
                      direction:  isOver800 ? Axis.horizontal: Axis.vertical,
                      children: [
                        Image.asset(
                          'assets/displayimages/3.jpeg',
                          width: isOver800 ?MediaQuery.of(context).size.width / 4 : MediaQuery.of(context).size.width / 2,
                          height: height,
                          fit: BoxFit.fill,
                          filterQuality: FilterQuality.high,
                        ),
                        Image.asset(
                          'assets/displayimages/4.jpeg',
                          width: isOver800 ?MediaQuery.of(context).size.width / 4 : MediaQuery.of(context).size.width / 2,
                          height: height,
                          fit: BoxFit.fill,
                          filterQuality: FilterQuality.high,
                        )
                      ],
                    ),
                  ],
                ),
                Flex(
                  direction: Axis.horizontal,
                  children: [
                    Flex(
                      direction:  isOver800 ? Axis.horizontal: Axis.vertical,
                      children: [
                        Image.asset(
                          'assets/displayimages/5.jpeg',
                          width: isOver800 ?MediaQuery.of(context).size.width / 4 : MediaQuery.of(context).size.width / 2,
                          height: height,
                          fit: BoxFit.fill,
                          filterQuality: FilterQuality.high,
                        ),
                        Image.asset(
                          'assets/displayimages/6.jpeg',
                          width: isOver800 ?MediaQuery.of(context).size.width / 4 : MediaQuery.of(context).size.width / 2,
                          height: height,
                          fit: BoxFit.fill,
                          filterQuality: FilterQuality.high,
                        ),
                      ],
                    ),
                    Flex(
                      direction:  isOver800 ? Axis.horizontal: Axis.vertical,
                      children: [
                        Image.asset(
                          'assets/displayimages/7.jpeg',
                          width: isOver800 ?MediaQuery.of(context).size.width / 4 : MediaQuery.of(context).size.width / 2,
                          height: height,
                          fit: BoxFit.fill,
                          filterQuality: FilterQuality.high,
                        ),
                        Image.asset(
                          'assets/displayimages/8.jpeg',
                          width: isOver800 ?MediaQuery.of(context).size.width / 4 : MediaQuery.of(context).size.width / 2,
                          height: height,
                          fit: BoxFit.fill,
                          filterQuality: FilterQuality.high,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Positioned(
              top: -16,
              child: Image.asset(
                'assets/ImageShades/shadeAbove.png',
                fit: BoxFit.fitWidth,
                // height: 60,
                width: MediaQuery.of(context).size.width,
                color: blackx.withOpacity(1),
                // colorBlendMode: BlendMode.modulate,
              ),
            ),
            Positioned(
              bottom: -16,
              child: Image.asset(
                'assets/ImageShades/shadeLower.png',
                fit: BoxFit.fitWidth,
                // height: 60,
                width: MediaQuery.of(context).size.width,
                color: blackx.withOpacity(1),
                // colorBlendMode: BlendMode.modulate,
              ),
            ),
          ],
        ),
        const Stack(
          children: [],
        ),
      ],
    );
  }
}
