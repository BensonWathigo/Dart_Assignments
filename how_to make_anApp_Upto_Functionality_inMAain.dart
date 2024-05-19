import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Flutter_Application_in_lms_assignment',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();

  //Added from lms
  void getNext() {
    current = WordPair
        .random(); //The new getNext() method reassigns current with a new random WordPair.
    notifyListeners(); //notifyListeners()(a method of ChangeNotifier)that ensures that anyone watching MyAppState is notified.
  }

  //Added this code for the like button
  var favorites = <WordPair>[];

  void toggleFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
    } else {
      favorites.add(current);
    }
    notifyListeners();
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current; // added from lms for styling. Check line 49

    //added this for making a like button
    IconData icon;
    if (appState.favorites.contains(pair)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment
              .center, // added this to place theword at the centre
          children: [
            Text('A random BIG idea:'),
            BigCard(pair: pair), // changed from line 43

            //Added this from lms
            SizedBox(height: 10),
            Row(
              mainAxisSize: MainAxisSize.min, //Added this for alignment
              children: [
                //Added this for an elevated button
                ElevatedButton.icon(
                  onPressed: () {
                    appState.toggleFavorite();
                  },
                  icon: Icon(icon),
                  label: Text('Like'),
                ),
                SizedBox(
                  width: 10,
                ),

                ElevatedButton(
                  onPressed: () {
                    appState.getNext(); // changed again from lms
                  },
                  child: Text('Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.pair,
  });

  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // added this line for theme
    //Added this for theme
    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );

    return Card(
      //I wrapped this with a widget
      color: theme.colorScheme.primary, // also added this for theme
      //code defines the card's color to be the same as the theme's colorScheme property.
      //The color scheme contains many colors, and primary is the most prominent, defining color of the app.
//You can change this color, and the color scheme of the whole app, by scrolling up to MyApp and changing the seed color for the ColorScheme there.
      child: Padding(
        padding: const EdgeInsets.all(20),
        //Made the following canges to improve visibility and readablity of the two words separated.
        child: Text(
          pair.asLowerCase,
          style: style,
          semanticsLabel: "${pair.first} ${pair.second}",
        ),
      ),
    );
  }
}
