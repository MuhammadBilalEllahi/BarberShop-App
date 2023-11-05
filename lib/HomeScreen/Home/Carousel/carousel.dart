import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imageUrls = [
  'https://shazclippers.com/wp-content/uploads/2023/09/hairstyle06.jpg',
  'https://shazclippers.com/wp-content/uploads/2023/09/hairstyle06.jpg',
  'https://shazclippers.com/wp-content/uploads/2023/09/hairstyle06.jpg',
  'https://shazclippers.com/wp-content/uploads/2023/09/hairstyle06.jpg',
  // Add more image URLs as needed
];

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 350,
        width: MediaQuery.of(context).size.width,
        child:
            ListView(physics: const NeverScrollableScrollPhysics(), children: [
          SizedBox(
            height: 80,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("POPULAR HAIRCUTS FOR MEN",
                      style: TextStyle(
                          fontSize: 13.0,
                          fontFamily: "Raleway",
                          color: Colors.white.withOpacity(1))),
                ]),
          ),
          CarouselSlider.builder(
            itemCount: imageUrls.length, // Repeat each image twice
            options: CarouselOptions(
              aspectRatio: 1.0, // Set aspect ratio to 1.0 for circular images
              viewportFraction: 0.6, // Display one image at a time
              enableInfiniteScroll: true, // Enable infinite scrolling
              autoPlay: true, // Auto play the carousel
              autoPlayInterval:
                  const Duration(seconds: 3), // Auto play interval
            ),
            itemBuilder: (BuildContext context, int index, int realIndex) {
              final actualIndex = realIndex % imageUrls.length;
              return Builder(
                builder: (BuildContext context) {
                  return Column(
                    children: [
                      Container(
                        height: 180,
                        margin: const EdgeInsets.all(6.0),
                        child: ClipOval(
                          child: Image.network(
                            imageUrls[actualIndex],
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Skin Fade",
                        style: TextStyle(
                          fontSize: 17.0,
                          fontFamily: "Raleway",
                          color: Colors.white.withOpacity(1),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ]));
  }
}
