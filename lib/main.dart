import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/whatsapp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
            title: 'Whatsapp',
            theme: ThemeData(
              primaryColor:  Color(0xff075E54),
        accentColor:  Color(0xff25D366),
            ),
            home: WhatsappHome(),
        
  
      );
  }
}
