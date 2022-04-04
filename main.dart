import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Google Fonts"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Google Font: Roboto', style: GoogleFonts.roboto(
              color: Colors.blue, fontSize: 24,
            ),),
            SizedBox(height: 20.0,),
            Text('Google Font: Rubik Beastly',
              style: GoogleFonts.getFont("Rubik Beastly", fontSize: 22, color: Colors.red),),
          ],
        ),
      ),
    );
  }
}

/// if a font is available in the assets folder, google_fonts package automatically
/// uses matching font files in pubspec.yaml's assets
/// (rather than fetching them at runtime via HTTP)

/// Font weights map to file names as follows:
/// {
///   FontWeight.w100: 'Thin',
///   FontWeight.w200: 'ExtraLight',
///   FontWeight.w300: 'Light',
///   FontWeight.w400: 'Regular',
///   FontWeight.w500: 'Medium',
///   FontWeight.w600: 'SemiBold',
///   FontWeight.w700: 'Bold',
///   FontWeight.w800: 'ExtraBold',
///   FontWeight.w900: 'Black',
/// }

