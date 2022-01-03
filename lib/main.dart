import 'package:ecommerce_getx/helper/binding.dart';
import 'package:ecommerce_getx/view/auth/login_screen.dart';
import 'package:ecommerce_getx/view/control_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // Bindings.dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Binding(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const Scaffold(body: ControlScreen()),
      theme: ThemeData(fontFamily: 'SourceSans'),
    );
  }
}
