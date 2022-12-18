import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class  about_usPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      elevation: 0,
      title: Text(
        'About us',
        style: GoogleFonts.roboto(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.blue,
    ),
    body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20,),
          Container(
            width: MediaQuery.of(context).size.width-20,
            height: 200,

            margin: EdgeInsets.only(left: 20 ,right: 20),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width-20,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage("assets/images/card.jpg"),
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
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  height: 150,
                  margin: EdgeInsets.only(left:MediaQuery.of(context).size.width/2.1, top: 20 ),
                  child: Image(
                    image: AssetImage("assets/images/logo1.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),

          ),
          SizedBox(height: 25,),
          Container(
            margin: EdgeInsets.only(left: 10),
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(bottom: 8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
              children: [
                Text("Company ", style: TextStyle(
                fontSize: 40,
                color: Color.fromARGB(255, 6, 45, 108),
                fontWeight: FontWeight.w900,

              ), textAlign: TextAlign.center,),
                SizedBox(height: 5,),
                Container(
                  decoration: BoxDecoration(

                    border: Border(

                      bottom: BorderSide(
                        color: Color.fromARGB(255, 255, 179, 0),
                        width: 4,

                      ),


                    ),
                  ),

                  margin: EdgeInsets.only(left: 40),
                  padding: EdgeInsets.only(bottom: 5,right: 5),
                  child: Text("Overview", style: TextStyle(
                    fontSize: 40,
                    color: Color.fromARGB(255, 6, 45, 108),
                    fontWeight: FontWeight.w900,

                  ), textAlign: TextAlign.center,),
                )
  ],
      )
            ),
          ),
          SizedBox(height: 20,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 230,
            color: Colors.grey.shade200,
            child: Container(
              margin: EdgeInsets.all(20),
              color: Colors.white,
              child:Container(
                margin: EdgeInsets.all(10),
                child:  Text(
                  "Afriq Indus is a service provider, asset management consultancy and software development company, assisting its industrial customers to achieve optimized maintenance plans and production availability by substantially reducing the risk of unplanned shutdowns",
                  style: GoogleFonts.quicksand(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            
          ),


        ],
      ),
    ),

  );
}
