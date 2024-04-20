import 'package:flutter/material.dart';

void main() {
  runApp(Workoutplan());
}

class Workoutplan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          color: Colors.black,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Excercises',
            style: TextStyle(
              color: Colors.orange,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 16),
                child: Center(
                  child: Text(
                    'Excercises',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              ExercisePage(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/addplan');
          },
          child: Icon(
            Icons.add,
            size: 30.0,
          ),
          backgroundColor: Colors.orange,
        ),
      ),
    );
  }
}

class ExercisePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        ExerciseCard(
          exerciseName: 'Push-up',
          description:
              'Push-up is a great exercise for strengthening the chest, shoulders, and triceps muscles.',
          imagePath: 'assets/push_up.png',
        ),
        SizedBox(height: 20),
        ExerciseCard(
          exerciseName: 'Squat',
          description:
              'Squat is a compound exercise that strengthens the lower body and core muscles.',
          imagePath: 'assets/squat.png',
        ),
        SizedBox(height: 20),
        ExerciseCard(
          exerciseName: 'Plank',
          description:
              'Plank is an isometric exercise that strengthens the core muscles.',
          imagePath: 'assets/plank.png',
        ),
        SizedBox(height: 20),
        ExerciseCard(
          exerciseName: 'Jumping Jacks',
          description:
              'Jumping Jacks is a great cardiovascular exercise that engages multiple muscle groups.',
          imagePath: 'assets/jumping_jacks.png',
        ),
        SizedBox(height: 20),
        ExerciseCard(
          exerciseName: 'Burpees',
          description:
              'Burpees are a full-body exercise that combines squats, push-ups, and jumps.',
          imagePath: 'assets/burpees.png',
        ),
      ],
    );
  }
}

class ExerciseCard extends StatelessWidget {
  final String exerciseName;
  final String description;
  final String imagePath;

  const ExerciseCard({
    required this.exerciseName,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white, width: 3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            exerciseName,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange,
                ),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
