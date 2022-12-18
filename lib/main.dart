import 'package:afriqindus_app/Pages/HomePageAdmin.dart';
import 'package:afriqindus_app/Pages/HomePageClient.dart';
import 'package:afriqindus_app/widgets/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:url_launcher/url_launcher.dart';


import 'Pages/about_us.dart';
import 'Pages/academy.dart';
import 'Pages/contact.dart';
import 'Pages/digital.dart';
import 'Pages/e_mesure.dart';
import 'Pages/news.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'ubuntu',
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isHovering = false;

  Future<void> _launchUrl(String url) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return HomePageClient();
  }

}



