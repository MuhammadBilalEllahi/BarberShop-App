import 'package:flutter/material.dart';
import 'package:shazclippers/HomeScreen/Home/home_body.dart';

    const TextStyle textStyleForButtonText = TextStyle(
      color: Color(0xffF6F6F9),
      fontFamily: 'RedRoseLight',
      fontWeight: FontWeight.bold
    );



    final AppBar appBar = AppBar(
        title: const Text('Best Barber Shop',
        ),
        // actions:  [
        //   IconButton(onPressed: (){}, 
        //   icon: const Icon(Icons.home, )          
        // )
        // ],
        // iconTheme: ,
        // actionsIconTheme: ,

      );

    final Drawer drawer = Drawer(
        backgroundColor: const Color(0xff1C1C1C).withOpacity(1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // SizedBox(
            //   height: MediaQuery.of(context).size.width/5 ,
            // ),

            Padding(
              padding: const EdgeInsets.fromLTRB(10, 80, 0, 10),
              child: Image.asset(
                'assets/images/drawerImage.png',
                width: 100,
                height: 50,
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  TextButton(
                    onPressed: (){},
                    child:   const Text("Home",
                    style: textStyleForButtonText ,),
                    ),
                  TextButton(
                    onPressed: (){},
                    child: const Text("About",
                    style: textStyleForButtonText),
                    ),
                  TextButton(
                    onPressed: (){},
                    child: const Text("Services",
                    style: textStyleForButtonText),
                    ),
                  TextButton(
                    onPressed: (){},
                    child: const Text("Reviews",
                    style: textStyleForButtonText),
                    ),
                  TextButton(
                    onPressed: (){},
                    child: const Text("Contact Us",
                    style: textStyleForButtonText),
                    ),
                  TextButton(
                    onPressed: (){},
                    child: const Text("Appointment",
                    style: textStyleForButtonText),
                    ),
                ],
              ),
            ),
          ],
        ),
      );
      // drawerScrimColor: Colors.transparent, //Nah the default is good

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: appBar,
      drawer:  drawer,
      body: const HomeBody()
    );
  }
}