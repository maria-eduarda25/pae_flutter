import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Color _bannerColor = Color(0xFF7D60A1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack( // Use Stack for flexible button positioning
        children: <Widget>[
          Column(
            children: <Widget>[
              _buildBanner(),
              _buildBody(),
              _buildButtons(), // Modified button layout
            ],
          ),
          Positioned( // Position the home button at the bottom
            bottom: 20.0,
            right: 20.0,
            child: _buildHomeButton(),
          ),
        ],
      ),
    );
  }

  Widget _buildBanner() {
    return Container(
      color: _bannerColor,
      height: 100,
      child: Center(
        child: Text(
          'Home Page',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Text(
            'Every Purchase',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Will be Made',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'With Pleasure',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Buy and Enjoy',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtons() {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: _bannerColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
          onPressed: () {},
          child: Text(
            'Start Shopping',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(height: 10), // Spacing between buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: _bannerColor),
              ),
              onPressed: () {},
              child: Text('Learn More'),
            ),
            SizedBox(width: 20),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: _bannerColor),
              ),
              onPressed: () {},
              child: Text('Login'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildHomeButton() {
    return Container(
      decoration: BoxDecoration(
        color: _bannerColor,
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Icon(
            FontAwesomeIcons.home,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
