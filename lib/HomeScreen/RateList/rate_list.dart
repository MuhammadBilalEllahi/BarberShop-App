import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shazclippers/ListViewJson/list_view_json.dart';
import 'package:shazclippers/Themes/darktheme.dart';


String svgString = '''
    <svg xmlns="" viewBox="0 2 1000 225" preserveAspectRatio="none">
      <path class="elementor-shape-fill" d="M194,99c186.7,0.7,305-78.3,306-97.2c1,18.9,119.3,97.9,306,97.2c114.3-0.3,194,0.3,194,0.3s0-91.7,0-100c0,0,0,0,0-0 L0,0v99.3C0,99.3,79.7,98.7,194,99z"></path>
    </svg>
    ''';

List<User> user = getUsers();
    const EdgeInsets ifNoWrapText = EdgeInsets.only(right: 15.0);
    const EdgeInsets ifWrapText = EdgeInsets.only(top: 15, right: 15.0);

class RateList extends StatelessWidget {
  const RateList({super.key});

  @override
  Widget build(BuildContext context) {
    return     Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/menu/backgroundMenu.jpeg'),
                      fit: BoxFit.fill)),

              // color: const Color(0x00f6f6f9),

              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.fromLTRB(5, 20, 5, 0), //header size
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          'assets/menu/headerMenu.png',
                          height: 100,
                          width: 400,
                          color: silver.withOpacity(1),
                        ),
                        const Text(
                          "BARBER SERVICES",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Stack(

                    children: [
                      SizedBox(
                        height: 100 + (user.length / 1.0) * 65,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(
                              15, 15, 15, 15), //whole list

                          child: Column(
                            children: [
                              ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: user.length,
                                  itemBuilder: (context, int index) {
                                    print("LIST OF  BARBER SERVICES : $index");
                                    final users = user[index];
                                    // final item = index;
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          flex: (users.wrapText == 1)
                                              ? 1
                                              : 0,
                                          child: Container(
                                            margin:
                                                (users.wrapText == 1)
                                                    ? ifWrapText
                                                    : ifNoWrapText,
                                            child: Text(
                                              "${users.name} ",
                                              softWrap: true,
                                              style: const TextStyle(
                                                  color: black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                              // padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                                              margin:
                                                  (users.wrapText == 1)
                                                      ? const EdgeInsets.only(
                                                          left: 0.0,
                                                          top: 30,
                                                          right: 15.0)
                                                      : const EdgeInsets.only(
                                                          left: 0.0,
                                                          top: 20,
                                                          right: 15.0),
                                              child: const Divider(
                                                // indent: 2,
                                                color: black,
                                                height: 40,
                                              )),
                                        ),
                                        Text(
                                          "£${users.price} ",
                                          style: const TextStyle(color: black),
                                        ),
                                      ],
                                    );
                                  }),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationZ(
                          180 * 3.1415927 / 180), // 180 degrees in radians
                      child: SvgPicture.string(
                        svgString,
                        fit: BoxFit.fill,
                        // ignore: deprecated_member_use
                        color: blackx.withOpacity(1),
                        // colorFilter:  ColorFilter.mode(blackx.withOpacity(1), BlendMode.dst),
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                      ),
                    ),
                  )
                ],
              ));
  }
}