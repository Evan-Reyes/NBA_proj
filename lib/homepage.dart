import 'package:flutter/material.dart';
import './matchup.dart'; //importing the MatchupPage
import './playoffpage.dart'; //importing the PlayoffPage
import './matchupresults.dart';
import './aboutpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  Widget _buildPopupDialog(BuildContext context) {
    return new AlertDialog(
      title: const Text(
        'Team Roster',
        textAlign: TextAlign.center,
      ),
      content: new Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Roster goes here"),
        ],
      ),
      actions: <Widget>[
        new ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Close'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final teamsList2 = Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: Image.asset("assets/heat1.png"),
                iconSize: 22,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
              TextButton(
                child: Text('Miami Heat',
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.left),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: Image.asset("assets/bucks.png"),
                iconSize: 22,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
              TextButton(
                child: Text('Milwuakee Bucks',
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.left),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: Image.asset("assets/timberwolves.png"),
                iconSize: 22,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
              TextButton(
                child: Text('Minnesota Timberwolves',
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.left),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: Image.asset("assets/pelicans.png"),
                iconSize: 22,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
              TextButton(
                child: Text('New Orleans Pelicans',
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.left),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: Image.asset("assets/knicks.png"),
                iconSize: 22,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
              TextButton(
                child: Text('New York Knicks',
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.left),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: Image.asset("assets/thunder.png"),
                iconSize: 22,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
              TextButton(
                child: Text('Oklahoma City Thunder',
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.left),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: Image.asset("assets/magic.png"),
                iconSize: 22,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
              TextButton(
                child: Text('Orlando Magic',
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.left),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: Image.asset("assets/76ers.png"),
                iconSize: 22,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
              TextButton(
                child: Text('Philadelphia 76ers',
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.left),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: Image.asset("assets/suns.png"),
                iconSize: 22,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
              TextButton(
                child: Text('Phoenix Suns',
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.left),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: Image.asset("assets/trailblazers.png"),
                iconSize: 22,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
              TextButton(
                child: Text('Portland Trail Blazers',
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.left),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: Image.asset("assets/kings.png"),
                iconSize: 22,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
              TextButton(
                child: Text('Sacramento Kings',
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.left),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: Image.asset("assets/spurs.png"),
                iconSize: 22,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
              TextButton(
                child: Text('San Antonio Spurs',
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.left),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: Image.asset("assets/raptors.png"),
                iconSize: 22,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
              TextButton(
                child: Text('Toronto Raptors',
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.left),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: Image.asset("assets/jazz.png"),
                iconSize: 22,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
              TextButton(
                child: Text('Utah Jazz',
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.left),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: Image.asset("assets/wizards.png"),
                iconSize: 22,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
              TextButton(
                child: Text('Washington Wizards',
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.left),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        _buildPopupDialog(context),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );

    final teamsList1 = Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: Image.asset("assets/atlanta.png"),
              iconSize: 22,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
            TextButton(
              child: Text('Atlanta Hawks',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.left),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: Image.asset("assets/celtics.png"),
              iconSize: 22,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
            TextButton(
              child: Text('Boston Celtics',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.left),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: Image.asset("assets/nets.png"),
              iconSize: 22,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
            TextButton(
              child: Text('Brooklyn Nets',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.left),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: Image.asset("assets/hornets.png"),
              iconSize: 22,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
            TextButton(
              child: Text('Charlotte Hornets',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.left),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: Image.asset("assets/bulls.png"),
              iconSize: 22,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
            TextButton(
              child: Text('Chicago Bulls',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.left),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: Image.asset("assets/cavaliers.png"),
              iconSize: 22,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
            TextButton(
              child: Text('Cleveland Cavaliers',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.left),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: Image.asset("assets/mavericks.png"),
              iconSize: 22,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
            TextButton(
              child: Text('Dallas Mavericks',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.left),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: Image.asset("assets/nuggets1.png"),
              iconSize: 22,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
            TextButton(
              child: Text('Denver Nuggets',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.left),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: Image.asset("assets/pistons.png"),
              iconSize: 22,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
            TextButton(
              child: Text('Detroit Pistons',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.left),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: Image.asset("assets/warriors.png"),
              iconSize: 22,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
            TextButton(
              child: Text('Golden State Warriors',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.left),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: Image.asset("assets/rockets.png"),
              iconSize: 22,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
            TextButton(
              child: Text('Houston Rockets',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.left),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: Image.asset("assets/pacers.png"),
              iconSize: 22,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
            TextButton(
              child: Text('Indiana Pacers',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.left),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: Image.asset("assets/clippers.png"),
              iconSize: 22,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
            TextButton(
              child: Text('Los Angeles Clippers',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.left),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: Image.asset("assets/lakers.png"),
              iconSize: 22,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
            TextButton(
              child: Text('Los Angeles Lakers',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.left),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: Image.asset("assets/grizzlies.png"),
              iconSize: 22,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
            TextButton(
              child: Text('Memphis Grizzlies',
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.left),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              },
            ),
          ],
        ),
      ],
    ));

    final teamsListColumn = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          teamsList1,
          teamsList2,
        ],
      ),
    );

    final predictPlayoffHome = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40, width: 5),
          Text(
            'Predict the Playoffs',
            style: TextStyle(color: Colors.red, fontSize: 20),
          ),
          Text('Think you can guess what the NBA Playoffs will look like?'),
          Text('Find out by clicking the button below!'),
          SizedBox(height: 14, width: 5),
          ElevatedButton(
            child: Text('PREDICT NOW!'),
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              // side: BorderSide(color: Colors.yellow, width: 5),
              textStyle: const TextStyle(color: Colors.white),
              shadowColor: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PlayoffPage()),
              );
            },
          ),
        ],
      ),
    );
    final predictHome = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40, width: 5),
          Text(
            'Predict Your Own Matchup',
            style: TextStyle(color: Colors.red, fontSize: 20),
          ),
          Text(
              'Want to see how your favorite teams would pair up against each other?'),
          Text('Try our matchup predictor by clicking the button below!'),
          SizedBox(height: 14, width: 5),
          ElevatedButton(
            child: Text('PREDICT NOW!'),
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              // side: BorderSide(color: Colors.yellow, width: 5),
              textStyle: const TextStyle(color: Colors.white),
              shadowColor: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MatchupPage()),
              );
            },
          ),
        ],
      ),
    );
    final timePredict = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Time goes here'),
          SizedBox(height: 6, width: 5),
          ElevatedButton(
            child: Text('PREDICT'),
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              // side: BorderSide(color: Colors.yellow, width: 5),
              textStyle: const TextStyle(color: Colors.white),
              shadowColor: Colors.black,
            ),
            onPressed: () {},
          ),
          SizedBox(height: 20, width: 5),
        ],
      ),
    );
    final dailySchedule = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('games will go here'),
          SizedBox(height: 5, width: 40),
          timePredict,
        ],
      ),
    );
    final leftColumnHome = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Games Today',
            style: TextStyle(color: Colors.red, fontSize: 20),
          ),
          Text('Check out the games happening today and see who might win!'),
          SizedBox(height: 14, width: 5),
          dailySchedule,
          dailySchedule,
          predictHome,
          SizedBox(height: 14, width: 5),
          predictPlayoffHome,
        ],
      ),
    );
    final rightColumnHome = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'NBA Teams',
            style: TextStyle(color: Colors.red, fontSize: 20),
            textAlign: TextAlign.center,
          ),
          Text('Click on a team below to see the roster and ranking!',
              textAlign: TextAlign.center),
          SizedBox(height: 14, width: 5),
          teamsListColumn,
        ],
      ),
    );
    final midHome = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          leftColumnHome,
          rightColumnHome,
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
            //adding the first navigation item and positioning it at the center
            child: Text('Home', style: TextStyle(color: Colors.black)),
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

          SizedBox(width: 60), //putting some space between the nav items

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50, width: 5),
            Text('Welcome to the Matchup Predictor!',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 36,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 50, width: 5),
            midHome,
          ],
        ),
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
