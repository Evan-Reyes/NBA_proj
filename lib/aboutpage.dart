import 'package:flutter/material.dart';
// ignore: unused_import
import './homepage.dart'; //importing the home widget
import './matchup.dart';
import './playoffpage.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //adding an Appbar
        leading: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Image.asset("assets/our_logo.png"),
        ),
        title: Text('NBA Predictor'), //the name of the application
        actions: [
          // the actions widget allows us to add several navigation items

          Center(
            //adding the second navigation item and positioning it at the center
            child: TextButton(
              child: Text('Home', style: TextStyle(color: Colors.white)),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              ),
            ),
          ),

          SizedBox(width: 60), //putting some space between the nav items

          Center(
            //adding the second navigation item and positioning it at the center
            child: TextButton(
              child: Text('Matchup Predictor',
                  style: TextStyle(color: Colors.white)),
              onPressed: () {
                //determining what should happen when the navigation item is clicked.
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MatchupPage()),
                );
              },
            ),
          ),
          SizedBox(width: 60), //putting some space between the nav items

          Center(
            //adding the second navigation item and positioning it at the center
            child: TextButton(
              child: Text('Playoff Predictor',
                  style: TextStyle(color: Colors.white)),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PlayoffPage()),
              ),
            ),
          ),
          SizedBox(width: 60),
          Center(
            //adding the second navigation item and positioning it at the center
            child: Text('About', style: TextStyle(color: Colors.black)),
          ),
          SizedBox(width: 80)
        ],
      ),
      body: Text('about'),
      bottomNavigationBar: BottomAppBar(
        child: Text(
          'University of North Texas: Team Fruitcakes',
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}
