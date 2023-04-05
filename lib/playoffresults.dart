import 'package:flutter/material.dart';
// ignore: unused_import
import './homepage.dart'; //importing the home widget
import './matchup.dart';
import './playoffpage.dart';
import './aboutpage.dart';

class PlayoffResults extends StatefulWidget {
  const PlayoffResults({Key? key}) : super(key: key);

  @override
  _PlayoffResultsState createState() => _PlayoffResultsState();
}

class _PlayoffResultsState extends State<PlayoffResults> {
  @override
  Widget build(BuildContext context) {
    final bodyColumn = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Results:',
            style: TextStyle(
                color: Colors.red, fontSize: 36, fontWeight: FontWeight.bold),
          ),
          Image.asset("assets/blankBracket.png"),
          Container(
            height: 100,
            width: 300,
            color: Colors.blue,
            child: Text(
              'CHAMPION!',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ],
      ),
    );
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
            child: TextButton(
              child: Text('About', style: TextStyle(color: Colors.white)),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutPage()),
              ),
            ),
          ),
          SizedBox(width: 80)
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('text', style: TextStyle(color: Colors.white)),
          bodyColumn,
          Text('text', style: TextStyle(color: Colors.white)),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Text(
          'University of North Texas: Team Fruitcakes',
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}
