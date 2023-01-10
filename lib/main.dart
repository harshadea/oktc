import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oktc/Controller/product_controller.dart';
import 'package:oktc/routes.dart';
import 'package:provider/provider.dart';
import 'Splash/splash.dart';
import 'google/g_sign.dart';

Future main() async{
  Get.put(ProductController());
  WidgetsFlutterBinding.ensureInitialized();
   Firebase.initializeApp();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
  create: (context) => GoogleSignInProvider(),
      child: GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'OKTC',
    theme: ThemeData(
      textTheme: GoogleFonts.assistantTextTheme(
        Theme.of(context).textTheme,
      ),
    ),
    // home: const HomeScreen(),
    initialRoute: Splash.routeName,
    routes: routes,
  ),
  );
}
