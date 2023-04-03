import 'package:flutter/material.dart';
// ignore: unused_import
import './homepage.dart'; //importing the home widget
import './playoffpage.dart';

String dropdownvalue = 'Select Team';

var items = [
  'Select Team',
  'Atlanta Hawks',
  'Boston Celtics',
  'Brooklyn Nets',
  'Charlotte Hornets',
  'Chicago Bulls',
  'Cleveland Cavaliers',
  'Dallas Mavericks',
  'Denver Nuggets',
  'Detroit Pistons',
  'Golden State Warriors',
  'Houston Rockets',
  'Indiana Pacers',
  'Los Angeles Clippers',
  'Los Angeles Lakers',
  'Memphis Grizzlies',
  'Miama Heat',
  'Milwaukee Bucks',
  'Minnesota Timberwolves',
  'New Orleans Pelicans',
  'New York Knicks',
  'Oklahoma City Thunder',
  'Orlando Magic',
  'Philadelphia 76ers',
  'Phoenix Suns',
  'Portland Trail Blazers',
  'Sacramento Kings',
  'San Antonio Spurs',
  'Toronto Raptors',
  'Utah Jazz',
  'Washington Wizards',
];

final mid = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      teamA,
      Text('v.s.', style: TextStyle(fontSize: 24)),
      teamB,
    ],
  ),
);

final teamA = Container(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text('Select Team A', style: TextStyle(color: Colors.red, fontSize: 24)),
      DropdownButton(
        value: dropdownvalue,
        icon: const Icon(Icons.keyboard_arrow_down),
        items: items.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(items),
          );
        }).toList(),
        // After selecting the desired option,it will
        // change button value to selected value
        onChanged: (String? newValue) {},
      ),
    ],
  ),
);

final teamB = Container(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text('Select Team B', style: TextStyle(color: Colors.red, fontSize: 24)),
      DropdownButton(
        value: dropdownvalue,
        icon: const Icon(Icons.keyboard_arrow_down),
        items: items.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(items),
          );
        }).toList(),
        // After selecting the desired option,it will
        // change button value to selected value
        onChanged: (String? newValue) {},
      ),
    ],
  ),
);

class MatchupPage extends StatefulWidget {
  const MatchupPage({Key? key}) : super(key: key);

  @override
  _MatchupPageState createState() => _MatchupPageState();
}

class _MatchupPageState extends State<MatchupPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                    style: TextStyle(color: Colors.black)),
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
            SizedBox(width: 80)
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Make a Prediction',
              style: TextStyle(
                  color: Colors.red, fontSize: 36, fontWeight: FontWeight.bold),
            ),
            mid,
            SizedBox(
              height: 100,
              width: 300,
              child: ElevatedButton(
                child: Text('PREDICT NOW'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  // side: BorderSide(color: Colors.yellow, width: 5),
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontStyle: FontStyle.normal),
                  shadowColor: Colors.black,
                ),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MatchupPage())),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
