import 'package:flutter/material.dart';
import 'package:shazclippers/FormScreen/main_form.dart';
import 'package:shazclippers/HomeScreen/BarberImage/barber_image.dart';
import 'package:shazclippers/HomeScreen/Footer/ContactBox/contact_box.dart';
import 'package:shazclippers/HomeScreen/Footer/ContactBox/contact_box_black.dart';
import 'package:shazclippers/HomeScreen/Footer/OpenDays/open_days.dart';
import 'package:shazclippers/HomeScreen/Footer/footer.dart';
import 'package:shazclippers/HomeScreen/Home/AboutUs/about_us.dart';
import 'package:shazclippers/HomeScreen/Home/Banner/banner.dart';
// import 'package:shazclippers/HomeScreen/Home/Carousel/carousel.dart';
import 'package:shazclippers/HomeScreen/Home/T8DisplayImages/images_display.dart';
import 'package:shazclippers/HomeScreen/RateList/rate_list.dart';
import 'package:shazclippers/Themes/darktheme.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    // String svgString = '''
    // <svg xmlns="" viewBox="0 2 1000 225" preserveAspectRatio="none">
    //   <path class="elementor-shape-fill" d="M194,99c186.7,0.7,305-78.3,306-97.2c1,18.9,119.3,97.9,306,97.2c114.3-0.3,194,0.3,194,0.3s0-91.7,0-100c0,0,0,0,0-0 L0,0v99.3C0,99.3,79.7,98.7,194,99z"></path>
    // </svg>
    // ''';

    return SingleChildScrollView(
      // reverse: false,
      // physics: const PageScrollPhysics(),
      physics: const ClampingScrollPhysics(),

      // width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height,

      // color: Theme.of(context).primaryColor,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const HeroBanner(), // created to add different images in future
          const ContactBoxBlack(), // contact box : later implement launcher
          // const Carousel(), // carousel to show different hairstyles

          //listView to create ratelist : later can be used by client to change prices (not fully implemented)
          const RateList(),

          const AboutUs(), // about us section 
          const ImagesDisplay(), // 8 images displayed of hair being cut

          //heading
          Container(
            color: blackx.withOpacity(1),
            width: MediaQuery.of(context).size.width,
            height: 150,
            child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(5, 40, 5, 30),
                      child: Text(
                        "MEET BARBERS",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ))
                ]),
          ),
          const BarberImage(),


          //showcase {images , designation: Managers, Barbers , name } 


          //Form to book appointment
          Container(
            color: blackx.withOpacity(1),
            height: MediaQuery.of(context).size.height - 250,
            width: MediaQuery.of(context).size.width,

            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  color: amberGold,
                  height: 5,
                ),
                Divider(
                  color: amberGold,
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 40, 5, 30),
                  child: Text(
                    "Book An Appointment",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                MainForm(),
                Divider(
                  color: amberGold,
                  height: 5,
                ),
                Divider(
                  color: amberGold,
                  height: 10,
                ),
              ],
            ),
            // decoration: const BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage("assets/images/bulb.jpg"),
            //     fit: BoxFit.cover,
            //   ),
            // ),
          ),
          const ContactBox(),

          const OpenDays(),
          Container(
            width: MediaQuery.of(context).size.width,
            color: blackx.withOpacity(1),
            child: Image.asset(
              'assets/images/map.jpeg',
              alignment: Alignment.topCenter,
              width: MediaQuery.of(context).size.width,
              height: 300,
            ),
          ),
          Container(
              // color: const Color.fromARGB(18, 18, 18, 1).withOpacity(1),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color(0xFF1C1C1C),
              ),
              height: 200,
              child: Stack(
                
                children: [
                Positioned(
                  width: MediaQuery.of(context).size.width,
                  // bottom: 100,
                  // left:-250,
                  child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationZ(
                        180 * 3.1415927 / 180), // 180 degrees in radians
                    child: SvgPicture.string(
                      svgString,
                      fit: MediaQuery.of(context).size.width > 900 ?BoxFit.fill : BoxFit.fitHeight,
                      // ignore: deprecated_member_use
                      color: const Color.fromARGB(18, 18, 18, 1).withOpacity(1),
                      // colorFilter: ColorFilter.mode(const Color.fromARGB(18, 18, 18, 1).withOpacity(1), BlendMode.),
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/images/drawerImage.png',
                        width: 110,
                        height: 200,
                      ),
                    ],
                  ),
                ),
              ])),
          const Footer()
        ],
      ),
    );
  }
}

// _launchInstagram();
