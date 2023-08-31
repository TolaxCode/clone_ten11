import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:shopping_ui_project/model/products.dart';
import 'package:shopping_ui_project/views/page/auth_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        themeAnimationCurve: Curves.linear,
        home: AuthPage(),
      ),
    );
  }
}
