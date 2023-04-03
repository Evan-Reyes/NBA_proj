import 'package:flutter/material.dart';
import './matchup.dart'; //importing the MatchupPage
import 'playoffpage.dart'; //importing the PlayoffPage

final dailyColumn = Container(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text('Games Today'),
      dailyGames,
    ],
  ),
);

final dailyGames = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text('Daily Team Icons will be here'),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Game Time will be here"),
          ElevatedButton(
            child: Text('PREDICT'),
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
            ),
            onPressed: () {},
          ),
        ],
      ),
    ],
  ),
);

final teams = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      teamIcons,
      teamNames,
    ],
  ),
);

final teamIcons = Container(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [Text('icons'), Text('here')],
  ),
);

final teamNames = Container(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      TextButton(
        child: Text('Atlanta Hawks', style: TextStyle(color: Colors.black)),
        onPressed: () {},
      ),
      TextButton(
        child: Text('Boston Celtics', style: TextStyle(color: Colors.black)),
        onPressed: () {},
      ),
      TextButton(
        child: Text('Brooklyn Nets', style: TextStyle(color: Colors.black)),
        onPressed: () {},
      ),
      TextButton(
        child: Text('Charlotte Hornets', style: TextStyle(color: Colors.black)),
        onPressed: () {},
      ),
      TextButton(
        child: Text('Chicago Bulls', style: TextStyle(color: Colors.black)),
        onPressed: () {},
      ),
      TextButton(
        child:
            Text('Cleveland Cavaliers', style: TextStyle(color: Colors.black)),
        onPressed: () {},
      ),
      TextButton(
        child: Text('Dallas Mavericks', style: TextStyle(color: Colors.black)),
        onPressed: () {},
      ),
      TextButton(
        child: Text('Denver Nuggets', style: TextStyle(color: Colors.black)),
        onPressed: () {},
      ),
      TextButton(
        child: Text('Detroit Pistons', style: TextStyle(color: Colors.black)),
        onPressed: () {},
      ),
      TextButton(
        child: Text('Golden State Warriors',
            style: TextStyle(color: Colors.black)),
        onPressed: () {},
      ),
      TextButton(
        child: Text('Houston Rockets', style: TextStyle(color: Colors.black)),
        onPressed: () {},
      ),
      TextButton(
        child: Text('Indiana Pacers', style: TextStyle(color: Colors.black)),
        onPressed: () {},
      ),
      TextButton(
        child:
            Text('Los Angeles Clippers', style: TextStyle(color: Colors.black)),
        onPressed: () {},
      ),
      TextButton(
        child:
            Text('Los Angeles Lakers', style: TextStyle(color: Colors.black)),
        onPressed: () {},
      ),
      TextButton(
        child: Text('Memphis Grizzlies', style: TextStyle(color: Colors.black)),
        onPressed: () {},
      ),
      TextButton(
        child: Text('Miami Heat', style: TextStyle(color: Colors.black)),
        onPressed: () {},
      ),
      TextButton(
        child: Text('Milwuakee Bucks', style: TextStyle(color: Colors.black)),
        onPressed: () {},
      ),
      TextButton(
        child: Text('Minnesota Timberwolves',
            style: TextStyle(color: Colors.black)),
        onPressed: () {},
      ),
      TextButton(
        child:
            Text('New Orleans Pelicans', style: TextStyle(color: Colors.black)),
        onPressed: () {},
      ),
      TextButton(
        child: Text('New York Knicks', style: TextStyle(color: Colors.black)),
        onPressed: () {},
      ),
      TextButton(
        child: Text('Oklahoma City Thunder',
            style: TextStyle(color: Colors.black)),
        onPressed: () {},
      ),
      TextButton(
        child: Text('Orlando Magic', style: TextStyle(color: Colors.black)),
        onPressed: () {},
      ),
      TextButton(
        child:
            Text('Philadelphia 76ers', style: TextStyle(color: Colors.black)),
        onPressed: () {},
      ),
      TextButton(
        child: Text('Phoenix Suns', style: TextStyle(color: Colors.black)),
        onPressed: () {},
      ),
      TextButton(
        child: Text('Portland Trail Blazers',
            style: TextStyle(color: Colors.black)),
        onPressed: () {},
      ),
      TextButton(
        child: Text('Sacramento Kings', style: TextStyle(color: Colors.black)),
        onPressed: () {},
      ),
      TextButton(
        child: Text('San Antonio Spurs', style: TextStyle(color: Colors.black)),
        onPressed: () {},
      ),
      TextButton(
        child: Text('Toronto Raptors', style: TextStyle(color: Colors.black)),
        onPressed: () {},
      ),
      TextButton(
        child: Text('Utah Jazz', style: TextStyle(color: Colors.black)),
        onPressed: () {},
      ),
      TextButton(
        child:
            Text('Washington Wizards', style: TextStyle(color: Colors.black)),
        onPressed: () {},
      ),
    ],
  ),
);

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            //adding the first navigation item and positioning it at the center
            child: TextButton(
              child: Text('Home', style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
                Navigator.pop(context);
              },
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
          SizedBox(width: 80)
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(child: dailyColumn),
          SizedBox(child: teams),
        ],
      ),
    );
  }
}
