import 'package:farm_app/screens/cartscreen.dart';
import 'package:farm_app/screens/fertilizers.dart';
import 'package:farm_app/screens/home.dart';
import 'package:farm_app/screens/login.dart';
import 'package:farm_app/screens/profile.dart';
import 'package:farm_app/screens/seeds.dart';
import 'package:farm_app/screens/signup.dart';
import 'package:farm_app/screens/tractors.dart';
import 'package:farm_app/screens/weather.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'models/ProfileModel.dart';
import 'models/cart.dart';

Color color= Color(0xff66B343);
Color scolor= Color.fromARGB(255, 57, 54, 53);
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseAppCheck.instance.activate();
  runApp( MultiProvider(
    providers: [ChangeNotifierProvider(
        create: (context) => CartModel(),),
        ChangeNotifierProvider(create: (context) => ProfileModel()),
        ],
        child: MyApp(),
  ),);
}
class MyApp extends StatelessWidget {
    MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
        home: Login(),
        routes: {
          'login': (context) => Login(),
          'signup': (context) => Signup(),
          'home': (context) => Home(),
          'profile': (context) => Profile(),
          'seeds': (context) => seeds(),
          'fertilizer': (context) => Fertilizer(),
          'tractors': (context) => Tractors(),
          'weather': (context) => Weather(),
          'cart': (context) => CartScreen(),
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
      ),
    );
  }
}
