import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.anaheimTextTheme(),
      ),
      home: Scaffold(
        body: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                botton(Icons.book, 'Projects', () {}),
                botton(Icons.draw, 'Draft', () {}),
                botton(Icons.switch_access_shortcut_outlined, 'Shared with me', () {}),
                const Spacer(),
                botton(Icons.settings, 'Settings', () {}),
                botton(Icons.people, 'Invite members', () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget botton(IconData icon, String label, VoidCallback onPressed) {
  return TextButton.icon(
    icon: Icon(icon),
    label: Text(label),
    onPressed: onPressed,
  );
}