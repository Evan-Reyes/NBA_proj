import 'package:flutter/material.dart';
// ignore: unused_import
import './homepage.dart'; //importing the home widget
import './matchup.dart';

class PlayoffPage extends StatefulWidget {
  const PlayoffPage({Key? key}) : super(key: key);

  @override
  _PlayoffPageState createState() => _PlayoffPageState();
}

class _PlayoffPageState extends State<PlayoffPage> {
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
                  style: TextStyle(color: Colors.black)),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PlayoffPage()),
              ),
            ),
          ),
          SizedBox(width: 80)
        ],
      ),
      body: Container(
        child: Center(
          child: Text(
            'playoff', //Once again, this text message will be displayed in the center of the page.
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
