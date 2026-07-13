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

// Same drawer used on every page.
Widget buildDrawer(BuildContext context) {
  return Drawer(
    child: ListView( 
      padding: EdgeInsets.all(50.0),
      children: [
        DrawerHeader(
          decoration: BoxDecoration(color: Colors.red),
          child: Text(
            "Menu",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
          onTap: () {
            Navigator.pop(context); // close the drawer
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("Settings"),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => SettingsPage()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Profile"),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: Text("About"),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => AboutPage()),
            );
          },
        ),
      ],
    ),
  );
}