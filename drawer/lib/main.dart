import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Navigation Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      endDrawer: buildDrawer(context),
      body: Center(
        child: Text(
          "Welcome to Home Page",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      drawer: buildDrawer(context),
      body: Center(
        child: Text(
          "This is Settings Page",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      drawer: buildDrawer(context),
      body: Center(
        child: Text(
          "This is Profile Page",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
      ),
      drawer: buildDrawer(context),
      body: Center(
        child: Text(
          "This is About Page",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
