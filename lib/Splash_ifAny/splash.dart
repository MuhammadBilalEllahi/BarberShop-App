// import 'package:assignment2_bilal_elahi/Home/home.dart';
// import 'package:flutter/material.dart';


// class Splash extends StatefulWidget {
//   const Splash({super.key});

//   @override
//   State<Splash> createState() => _SplashState();
// }

// class _SplashState extends State<Splash> {

//   @override
//   void initState() {
//     super.initState();
//     _splashController();
//   }


//   Future<void> _splashController() async {

//    await Future.delayed(const Duration(seconds: 3));
//    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Home() ));

//   } 
//   @override
//   Widget build(BuildContext context) {
//     return   Scaffold(
//       body: SizedBox(

//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
        
//         child:  Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,

      
//                 children: [
//                   // const Icon(Icons.sports_baseball_sharp , size: 90,),
//                   Image.asset('asset/images/logoimage/logo.png'),
//                   const SizedBox(height: 20,),
//                   const Text("SplashScreen Here"),
//                   const SizedBox(height: 20,),
//                   const CircularProgressIndicator()

//                 ],
//     ),
//       )
//     );
//   }
// }