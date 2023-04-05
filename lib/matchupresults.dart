import 'package:flutter/material.dart';
// ignore: unused_import
import './homepage.dart'; //importing the home widget
import './matchup.dart';
import './playoffpage.dart';
import './aboutpage.dart';

final game = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text('The Game    ',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      Text('Game info here', style: TextStyle(fontSize: 18)),
    ],
  ),
);

final winner = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text('The Winner    ',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      Text('Winner info here', style: TextStyle(fontSize: 18)),
    ],
  ),
);

final score = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text('The Score   ',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      Text('Score info here', style: TextStyle(fontSize: 18)),
    ],
  ),
);

final resultsBox = Container(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      game,
      winner,
      score,
    ],
  ),
);

class MatchupResults extends StatefulWidget {
  const MatchupResults({Key? key}) : super(key: key);

  @override
  _MatchupResultsState createState() => _MatchupResultsState();
}

class _MatchupResultsState extends State<MatchupResults> {
  @override
  Widget build(BuildContext context) {
    final midColumn = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Matchup Prediction Results',
            style: TextStyle(
                color: Colors.red, fontSize: 36, fontWeight: FontWeight.bold),
          ),
          resultsBox,
          SizedBox(
            height: 100,
            width: 300,
            child: ElevatedButton(
              child:
                  Text('PREDICT ANOTHER MATCHUP', textAlign: TextAlign.center),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                // side: BorderSide(color: Colors.yellow, width: 5),
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontStyle: FontStyle.normal),
                shadowColor: Colors.black,
              ),
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const MatchupPage())),
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
          midColumn,
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
