import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/Purple Paradise.jpg"),
              fit: BoxFit.cover,
            ),
          ),

          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                // The Image at the Beginning
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage("images/dp.jpeg"),
                ),


                // The Name
                Text(
                  "Vishesh Kwatra",
                  style: TextStyle(
                    fontFamily: "Pacifico",
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),


                // The Job Title
                Text(
                  "PASSIONATE CODER",
                  style: TextStyle(
                    color: Colors.white70,
                    fontFamily: "SourceSansPro",
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),


                // The line between the Title and the contact info
                SizedBox(
                  height: 20.0,
                  width: 150,
                  child: Divider(
                    color: Colors.teal[100],
                  ),
                ),


                // The Number Container
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),

                  child: ListTile(
                    title: Text(
                      "+91 6762 5217",
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontFamily: "SourceSansPro",
                          fontSize: 20.0
                      ),
                    ),

                    leading: Icon(
                      Icons.phone,
                      color: Colors.grey[800],
                    ),

                  ),
                ),



                // The Email Container
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),

                  child: ListTile(
                    title:Text(
                      "kwatra.vishesh@gmail.com",
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 20.0,
                          fontFamily: "SourceSansPro"
                      ),
                    ),

                    leading: Icon(
                      Icons.mail,
                      color: Colors.grey[800],
                    ),

                  ),
                ),



                SizedBox(
                  height: 20.0,
                ),



                // Links to all my socials
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    GestureDetector(
                      onTap: _launchURL1,

                      child: Image(
                        image: AssetImage("images/github.png"),
                        width: 40.0,
                        height: 40.0,
                      ),
                    ),


                    GestureDetector(
                      onTap: _launchURL2,

                      child: Image(
                        image: AssetImage("images/linkedin.png"),
                        width: 40.0,
                        height: 40.0,
                      ),
                    ),


                    GestureDetector(
                      onTap: _launchURL3,

                      child: Image(
                        image: AssetImage("images/twitter.png"),
                        width: 40.0,
                        height: 40.0,
                      ),
                    ),



                  ],
                ),






              ],
            ),
          ),
        ),
      ),
    );

  }

  _launchURL1() async {
    const url = 'https://github.com/SINGULARITY-101';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL2() async {
    const url = 'https://www.linkedin.com/in/vishesh-kwatra/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  _launchURL3() async {
    const url = 'https://twitter.com/vishesh_kwatra';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}






