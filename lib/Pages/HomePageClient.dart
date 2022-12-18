import 'package:afriqindus_app/Pages/academy.dart';
import 'package:afriqindus_app/Pages/contact.dart';
import 'package:afriqindus_app/Pages/digital.dart';
import 'package:afriqindus_app/Pages/e_mesure.dart';
import 'package:afriqindus_app/Pages/loginPage.dart';
import 'package:afriqindus_app/Pages/news.dart';
import 'package:afriqindus_app/widgets/navigation_client_widget.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:url_launcher/url_launcher.dart';



class HomePageClient extends StatefulWidget {


  @override
  State<HomePageClient> createState() => _HomePageClientState();
}

class _HomePageClientState extends State<HomePageClient> {
  @override
  bool isHovering = false;

  Future<void> _launchUrl(String url) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),

        title: Padding(
          // change left :
          padding: const EdgeInsets.only(left: 80),
          child: Image.asset(
            'assets/images/logo.png',
            height: 100,

          ),
        ),


      ),
      drawer: NavigationWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 180,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              color: Color.fromARGB(255, 255, 179, 0),
              margin: EdgeInsets.only(top: 15),
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Looking for a digital transformation companion?',
                      style: GoogleFonts.notoSans(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Center(
                    child: ElevatedButton.icon(

                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        primary: Color.fromARGB(255, 6, 45, 108),
                        onPrimary: Colors.white,
                        textStyle: GoogleFonts.atma(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => contactPage() ),
                        );
                      },
                      label: Text(
                        "Contact Us",
                      ), icon: Icon(
                      Icons.contact_page_outlined,
                      color: Colors.white,
                    ),


                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.only(right: 150),
              width: 200,
              padding: EdgeInsets.only(bottom: 8),
              decoration: BoxDecoration(

                border: Border(

                  bottom: BorderSide(
                    color: Color.fromARGB(255, 255, 179, 0),
                    width: 4,

                  ),


                ),
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("About US", style: TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(255, 6, 45, 108),
                  fontWeight: FontWeight.w900,

                ), textAlign: TextAlign.center,),),),

            SizedBox(height: 15,),
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: 200,
              padding: EdgeInsets.all(13),
              child: Stack(
                children: [
                  Container(

                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: 150,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          offset: Offset(-2, 5),
                          color: Color.fromARGB(255, 6, 45, 108),
                        ),
                      ],
                    ),

                  ),
                  Container(
                    height: 100,
                    width: 90,
                    margin: EdgeInsets.only(top: 25, left: MediaQuery
                        .of(context)
                        .size
                        .width - 150),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile.jpg'),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 40,
                    margin: EdgeInsets.only(top: 20, left: MediaQuery
                        .of(context)
                        .size
                        .width - 90),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/guillemets.jpg"),
                        )
                    ),

                  ),
                  Container(
                    width: double.maxFinite,
                    height: 120,

                    margin: EdgeInsets.only(top: 20, right: 120, left: 10),
                    child: Column(
                      children: [
                        Text("Jamal Belmaddi",
                          style: GoogleFonts.montserrat(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 4, 37, 60),
                          ),
                        ),
                        SizedBox(height: 2,),
                        Text(
                          "General Manager , Afriq Indus digital solutions",
                          style: GoogleFonts.openSans(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),

                        ),
                        SizedBox(height: 10,),
                        RichText(text: TextSpan(
                          text: "Our priority is to provide our partners with the best digital solutions adapted to their fields of activity, based on innovative approaches and experienced human capital.",
                          style: GoogleFonts.openSans(
                            fontSize: 11,
                            color: Colors.grey,
                          ),

                        ),
                        ),

                      ],
                    ),
                  )
                ],
              ),

            ),
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: 200,
              padding: EdgeInsets.all(13),
              child: Stack(
                children: [
                  Container(

                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: 150,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          offset: Offset(-2, 5),
                          color: Color.fromARGB(255, 6, 45, 108),
                        ),
                      ],
                    ),

                  ),
                  Container(
                    height: 100,
                    width: 90,
                    margin: EdgeInsets.only(top: 25, left: MediaQuery
                        .of(context)
                        .size
                        .width - 150),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile.jpg'),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 40,
                    margin: EdgeInsets.only(top: 20, left: MediaQuery
                        .of(context)
                        .size
                        .width - 90),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/guillemets.jpg"),
                        )
                    ),

                  ),
                  Container(
                    width: double.maxFinite,
                    height: 120,

                    margin: EdgeInsets.only(top: 20, right: 120, left: 10),
                    child: Column(
                      children: [
                        Text("Jamal Belmaddi",
                          style: GoogleFonts.montserrat(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 4, 37, 60),
                          ),
                        ),
                        SizedBox(height: 2,),
                        Text(
                          "General Manager , Afriq Indus digital solutions",
                          style: GoogleFonts.openSans(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),

                        ),
                        SizedBox(height: 10,),
                        RichText(text: TextSpan(
                          text: "Our priority is to provide our partners with the best digital solutions adapted to their fields of activity, based on innovative approaches and experienced human capital.",
                          style: GoogleFonts.openSans(
                            fontSize: 11,
                            color: Colors.grey,
                          ),

                        ),
                        ),

                      ],
                    ),
                  )
                ],
              ),

            ),
            Container(
              margin: EdgeInsets.only(right: 110),
              padding: EdgeInsets.only(bottom: 8),
              decoration: BoxDecoration(

                border: Border(

                  bottom: BorderSide(
                    color: Color.fromARGB(255, 255, 179, 0),
                    width: 4,

                  ),


                ),
              ),
              child: Text("Our services", style: TextStyle(
                fontSize: 40,
                color: Color.fromARGB(255, 6, 45, 108),
                fontWeight: FontWeight.w900,

              ), textAlign: TextAlign.center,),),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 1.5,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    offset: Offset(-2, 5),
                    color: Color.fromARGB(255, 6, 45, 108),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 3,
                    height: 100,

                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/logo1.png"),
                      ),
                    ),


                  ),
                  SizedBox(height: 7,),
                  Container(
                    padding: EdgeInsets.only(left: 9),
                    child: Text(

                      "The core of the business, we offer remote and on-site expertise, inspections and control services such as, vibration analysis, ODS, NDT, etc …",
                      style: GoogleFonts.openSans(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(height: 12,),
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onHover: (hovering) {
                        setState(() => isHovering = hovering);
                      },
                      child: Text(
                        "E-mesure",
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: isHovering
                              ? Color.fromARGB(255, 255, 179, 0)
                              : Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),

                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => e_mesurePage()),
                        );
                      },
                    ),
                  )

                ],
              ),


            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 1.5,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    offset: Offset(-2, 5),
                    color: Color.fromARGB(255, 6, 45, 108),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 3,
                    height: 100,

                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/logo1.png"),
                      ),
                    ),


                  ),
                  SizedBox(height: 7,),
                  Container(
                    padding: EdgeInsets.only(left: 9),
                    child: Text(

                      "We assist our customers in their digitalization journey and become more compliant to industry 4.0 standards",
                      style: GoogleFonts.openSans(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      child: Text(
                        "Digital",
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      hoverColor: Color.fromARGB(255, 255, 179, 0),
                      onLongPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );

                      },
                    ),
                  )

                ],
              ),


            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 1.5,
              height: 195,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    offset: Offset(-2, 5),
                    color: Color.fromARGB(255, 6, 45, 108),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 3,
                    height: 100,

                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/logo1.png"),
                      ),
                    ),


                  ),
                  SizedBox(height: 7,),
                  Container(
                    padding: EdgeInsets.only(left: 9),
                    child: Text(

                      "Training and consultancy services using an innovative concept based on blended learning adapted to the industrial context",
                      style: GoogleFonts.openSans(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(height: 12,),
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      child: Text(
                        "Academy",
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      hoverColor: Color.fromARGB(255, 255, 179, 0),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => academyPage()),
                        );

                      },
                    ),
                  )

                ],
              ),


            ),
            SizedBox(height: 20,),

            Container(
              margin: EdgeInsets.only(right: 110),
              padding: EdgeInsets.only(bottom: 8),
              decoration: BoxDecoration(

                border: Border(

                  bottom: BorderSide(
                    color: Color.fromARGB(255, 255, 179, 0),
                    width: 4,

                  ),


                ),
              ),
              child: Text("Latest News", style: TextStyle(
                fontSize: 40,
                color: Color.fromARGB(255, 6, 45, 108),
                fontWeight: FontWeight.w900,

              ), textAlign: TextAlign.center,),),
            SizedBox(height: 20,),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => newsPage()),
                    );
                  },
                  child: Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 1.4,
                    height: 178,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage("assets/images/news1.jpg"),
                        fit: BoxFit.fill,
                      ),

                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          offset: Offset(5, 5),
                          color: Color.fromARGB(255, 6, 45, 108),

                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 10,),
                Text(
                  "Création d'une solution web GMOA ",
                  style: GoogleFonts.notoSerif(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => newsPage()),
                    );
                  },
                  child: Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 1.4,
                    height: 178,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage("assets/images/news2.jpg"),
                        fit: BoxFit.fill,
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          offset: Offset(5, 5),
                          color: Color.fromARGB(255, 6, 45, 108),

                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  " I-sense at Africa IoT & AI",
                  style: GoogleFonts.notoSerif(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: 180,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/blueBackground.jpg"),
                        fit: BoxFit.fill,
                      ),

                    ),

                  ),
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: 150,
                    margin: EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        Text(
                          "We assist you to succeed",
                          style: GoogleFonts.openSans(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 255, 179, 0),
                          ),
                        ),
                        Text(
                          "your digital journey.",
                          style: GoogleFonts.openSans(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 1.7,
                    height: 60,
                    //color: Colors.cyan,
                    margin: EdgeInsets.only(top: 125, left: MediaQuery
                        .of(context)
                        .size
                        .width / 2.7),
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: Row(
                          children: [
                            Expanded(
                              child: IconButton(
                                onPressed: () {},
                                icon: FaIcon(FontAwesomeIcons.facebook),
                                color: Colors.white,
                                iconSize: 25,
                                hoverColor: Color.fromARGB(255, 255, 179, 0),
                              ),
                            ),
                            Expanded(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: FaIcon(FontAwesomeIcons.instagram),
                                  color: Colors.white,
                                  iconSize: 25,
                                  hoverColor: Color.fromARGB(255, 255, 179, 0),
                                )
                            ),
                            Expanded(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: FaIcon(FontAwesomeIcons.twitter),
                                  color: Colors.white,
                                  iconSize: 25,
                                  hoverColor: Color.fromARGB(255, 255, 179, 0),
                                )
                            ),
                            Expanded(
                                child: IconButton(
                                  onPressed: () {
                                    _launchUrl("https://www.linkedin.com/company/afriqindus40/about/");

                                  },
                                  icon: FaIcon(FontAwesomeIcons.linkedinIn),
                                  color: Colors.white,
                                  iconSize: 25,
                                  hoverColor: Color.fromARGB(255, 255, 179, 0),
                                )
                            ),

                          ],
                        )
                    ),

                  )

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
