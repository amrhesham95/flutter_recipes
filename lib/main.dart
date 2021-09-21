import 'package:flutter/material.dart';
import 'recipe.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  // 1
  @override
  Widget build(BuildContext context) {
    // 2
    return MaterialApp(
      // 3
      title: 'Recipe Calculator',
      theme: ThemeData(
          // 4
          primaryColor: Colors.white,
          accentColor: Colors.black
      ),
       // 5
      home: MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      // 2
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // 3
      body: SafeArea(
        // 4
        child: ListView.builder(itemCount: Recipe.samples.length, itemBuilder: (BuildContext context, int index) {
          return buildRecipeCard(Recipe.samples[index]);

        },),
      ), );
  }

  Widget buildRecipeCard(Recipe recipe) {
// 1
    return Card(
      // 2
      child: Column(
// 3
        children: <Widget>[
// 4
          Image(image: AssetImage(recipe.image)),
// 5
          Text(recipe.label),
        ],
      ), );
  }
}


