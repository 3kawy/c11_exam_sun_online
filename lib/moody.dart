import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Moody'),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {},
          ),
        ],
        titleSpacing: 0,
        leadingWidth: 50,
        leading: Container(
          padding: EdgeInsets.all(8.0),
          child: Image.asset('assets/images/logo.jpg'),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello, Mena Melad', style: TextStyle(fontSize: 24)),
              SizedBox(height: 8),
              Text('How are you feeling today?', style: TextStyle(fontSize: 18)),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FeelingIcon('Love', Icons.favorite),
                  FeelingIcon('Cool', Icons.sentiment_very_satisfied_outlined),
                  FeelingIcon('Happy', Icons.sentiment_satisfied),
                  FeelingIcon('Sad', Icons.sentiment_dissatisfied),
                ],
              ),
              SizedBox(height: 24),
              Text('Feature', style: TextStyle(fontSize: 18)),
              SizedBox(height: 8),
              FeatureCard(),
              SizedBox(height: 24),
              Text('Exercise', style: TextStyle(fontSize: 18)),
              SizedBox(height: 8),
              ExerciseGrid(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view, color: Colors.black),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, color: Colors.black),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.green,
      ),
    );
  }
}

class FeelingIcon extends StatelessWidget {
  final String label;
  final IconData icon;

  FeelingIcon(this.label, this.icon);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 30),
        SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}

class FeatureCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.lightbulb, size: 40),
        title: Text('Positive vibes'),
        subtitle: Text('Boost your mood with positive vibes'),
        trailing: Icon(Icons.play_arrow),
        onTap: () {},
      ),
    );
  }
}

class ExerciseGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        ExerciseCard('Meditation', Icons.self_improvement),
        ExerciseCard('Relaxation', Icons.spa),
        ExerciseCard('Breathing', Icons.waves),
        ExerciseCard('Yoga', Icons.self_improvement),
      ],
    );
  }
}

class ExerciseCard extends StatelessWidget {
  final String label;
  final IconData icon;

  ExerciseCard(this.label, this.icon);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 50),
            SizedBox(height: 16),
            Text(label),
          ],
        ),
      ),
    );
  }
}
