import 'package:flutter/material.dart';
import 'package:nba_app/matchupresults.dart';
import './homepage.dart';
import './playoffpage.dart';
import './aboutpage.dart';

class MatchupPage extends StatelessWidget {
  const MatchupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Image.asset("assets/our_logo.png"),
          ),
          title: Text('NBA Predictor'),
          actions: [
            NavigationItem(
              label: 'Home',
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              ),
            ),
            NavigationItem(
              label: 'Matchup Predictor',
              active: true,
            ),
            NavigationItem(
              label: 'Playoff Predictor',
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PlayoffPage()),
              ),
            ),
            NavigationItem(
              label: 'About',
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutPage()),
              ),
            ),
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
            TeamSelection(),
            PredictNowButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const MatchupResults())),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Text(
            'University of North Texas: Team Fruitcakes',
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ),
    );
  }
}

class NavigationItem extends StatelessWidget {
  final String label;
  final bool active;
  final VoidCallback? onPressed;

  const NavigationItem({
    Key? key,
    required this.label,
    this.active = false,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: Center(
        child: TextButton(
          child: Text(label,
              style: TextStyle(color: active ? Colors.black : Colors.white)),
          onPressed: onPressed,
        ),
      ),
    );
  }
}

class TeamSelection extends StatefulWidget {
  @override
  _TeamSelectionState createState() => _TeamSelectionState();
}

class _TeamSelectionState extends State<TeamSelection> {
  String dropdownValueA = 'Select Team';
  String dropdownValueB = 'Select Team';

  final List<String> items = [
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
    'Miami Heat',
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

  Widget teamDropdown(
      String label, String value, ValueChanged<String?> onChanged) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(label, style: TextStyle(color: Colors.red, fontSize: 24)),
          DropdownButton(
            value: value,
            icon: const Icon(Icons.keyboard_arrow_down),
            items: items.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        teamDropdown(
          'Select Team A',
          dropdownValueA,
          (String? newValue) {
            setState(() {
              dropdownValueA = newValue!;
            });
          },
        ),
        Text('v.s.', style: TextStyle(fontSize: 24)),
        teamDropdown(
          'Select Team B',
          dropdownValueB,
          (String? newValue) {
            setState(() {
              dropdownValueB = newValue!;
            });
          },
        ),
      ],
    );
  }
}

class PredictNowButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const PredictNowButton({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 300,
      child: ElevatedButton(
        child: Text('PREDICT NOW'),
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontStyle: FontStyle.normal,
          ),
          shadowColor: Colors.black,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
