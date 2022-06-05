import 'package:flutter/material.dart';

import 'package:my_qr_scanner/pages/home_page.dart';
import 'package:my_qr_scanner/pages/map_page.dart';
import 'package:my_qr_scanner/providers/ui_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UiProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My QRScaner',
        initialRoute: 'home',
        routes: {
          'home': (_) => const HomePage(),
          'map': (_) => const MapPage(),
        },
        theme: ThemeData(
          colorScheme: ColorScheme(
            brightness: Brightness.light,
            primary: Colors.deepPurple,
            onPrimary: Colors.white,
            secondary: Colors.deepPurple,
            onSecondary: Colors.white,
            error: Colors.red,
            onError: Colors.white,
            background: Colors.grey.shade200,
            onBackground: Colors.black54,
            surface: Colors.white,
            onSurface: Colors.black45,
          ),
        ),
      ),
    );
  }
}
