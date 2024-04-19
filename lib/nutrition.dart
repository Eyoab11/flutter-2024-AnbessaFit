import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnbessaFit'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background_image.png'), // Replace 'assets/background_image.jpg' with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WeightGainScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(40),
                  backgroundColor: Colors.orange,
                ),
                child: const Text('Weight loss'),
              ),
              SizedBox(width: 16), // Add space between the buttons
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WeightGainScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(40),
                  backgroundColor: Colors.orange,
                ),
                child: const Text('Weight Gain'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WeightLossScreen extends StatelessWidget {
  const WeightLossScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weight Loss Plan'),

        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Weight Loss Advice:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text('1. Set Realistic Goals: Define clear and achievable goals for your weight loss journey. Aim for gradual and steady progress rather than quick fixes.'),
              const Text('2. Balanced Nutrition: Focus on a balanced diet that includes a variety of fruits, vegetables, lean proteins, whole grains, and healthy fats. Monitor your calorie intake and consider portion control.'),
              const Text('3. Stay Hydrated: Drink plenty of water throughout the day. Sometimes, thirst can be mistaken for hunger.'),
              const Text('4. Regular Exercise: Incorporate regular physical activity into your routine. Aim for a mix of cardio exercises and strength training.'),
              const Text('5. Mindful Eating: Practice mindful eating by paying attention to hunger cues, eating slowly, and savoring your meals. Avoid emotional eating.'),
              const Text('6. Get Adequate Sleep: Prioritize quality sleep to support overall health and weight management. Aim for 7-9 hours of sleep per night.'),
              const Text('7. Manage Stress: Find healthy ways to manage stress, such as relaxation techniques or mindfulness practices.'),
              const Text('8. Seek Support: Consider seeking guidance from healthcare professionals or support groups if needed.'),
              const Text('9. Track Progress: Keep track of your progress to stay motivated and celebrate achievements along the way.'),
              const Text('10. Be Patient and Persistent: Weight loss takes time and effort. Stay committed to your goals and focus on making sustainable lifestyle changes.'),
              const SizedBox(height: 20),
              Image.asset(
                'assets/weight_loss1.png', // Replace 'assets/weight_loss1.png' with your image path
                height: 200, // Adjust the height as needed
                fit: BoxFit.contain, // Adjust the fit as needed
              ),
              const Text(
                'Calorie Calculator',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Enter Your Information:'),
                      const TextField(
                        decoration: InputDecoration(labelText: 'Age'),
                        keyboardType: TextInputType.number,
                      ),
                      const TextField(
                        decoration: InputDecoration(labelText: 'Height (cm)'),
                        keyboardType: TextInputType.number,
                      ),
                      const TextField(
                        decoration: InputDecoration(labelText: 'Weight (kg)'),
                        keyboardType: TextInputType.number,
                      ),
                      DropdownButtonFormField(
                        items: const [
                          DropdownMenuItem(child: Text('Male'), value: 'male'),
                          DropdownMenuItem(child: Text('Female'), value: 'female'),
                        ],
                        onChanged: (value) {
                          // Handle gender selection
                        },
                        decoration: const InputDecoration(labelText: 'Gender'),
                      ),
                      DropdownButtonFormField(
                        items: const [
                          DropdownMenuItem(child: Text('Sedentary'), value: 'sedentary'),
                          DropdownMenuItem(child: Text('Moderate'), value: 'moderate'),
                          DropdownMenuItem(child: Text('Active'), value: 'active'),
                        ],
                        onChanged: (value) {
                          // Handle activity level selection
                        },
                        decoration: const InputDecoration(labelText: 'Activity Level'),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          // Calculate calories
                        },
                        child: const Text('Calculate Calories'),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Current Weight Loss Plan',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Plan Name: My Weight Loss Journey',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      const Text('Goal: Lose 10 pounds in 2 months'),
                      const Text('Calorie Target: 1500 kcal/day'),
                      const Text('Macronutrient Ratios: 40% carbs, 30% protein, 30% fat'),
                      const Text('Meal Schedule: 3 meals + 2 snacks per day'),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Implement edit functionality
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black, // Text color of the button
                            ),
                            child: const Text(
                              'Edit Plan',
                              style: TextStyle(
                                color: Colors.orange, // Text color of the button text
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Implement edit functionality
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange, // Text color of the button
                            ),
                            child: const Text(
                              'Delete Plan',
                              style: TextStyle(
                                color: Colors.white, // Text color of the button text
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Implement edit functionality
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue, // Text color of the button
                ),
                child: const Text(
                  'Create plan',
                  style: TextStyle(
                    color: Colors.white, // Text color of the button text
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class WeightGainScreen extends StatelessWidget {
  const WeightGainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weight Gain Details'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Weight Gain Advice:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text('1. Set Realistic Goals: Define clear and achievable goals for your weight gain journey. Aim for a gradual increase in muscle mass and overall body weight.'),
              const Text('2. Nutrient-Dense Foods: Focus on consuming nutrient-dense foods such as lean proteins, healthy fats, complex carbohydrates, and plenty of fruits and vegetables.'),
              const Text('3. Caloric Surplus: Consume more calories than your body burns in a day to create a caloric surplus, which is essential for weight gain.'),
              const Text('4. Strength Training: Incorporate strength training exercises into your workout routine to build muscle mass and promote healthy weight gain.'),
              const Text('5. Proper Rest and Recovery: Ensure you get enough rest and recovery between workouts to support muscle growth and overall well-being.'),
              const Text('6. Stay Hydrated: Drink plenty of water throughout the day to stay hydrated and support optimal bodily functions.'),
              const Text('7. Monitor Progress: Keep track of your weight gain progress, muscle mass changes, and overall health to make necessary adjustments.'),
              const Text('8. Consistency is Key: Stay consistent with your nutrition, exercise, and lifestyle habits to achieve your weight gain goals effectively.'),
              const Text('9. Seek Professional Advice: Consider consulting with a nutritionist or fitness expert for personalized guidance and support.'),
              const Text('10. Listen to Your Body: Pay attention to your bodys hunger and fullness cues, and make adjustments to your diet and exercise regimen accordingly.'),
                  const SizedBox(height: 20),
              Image.asset(
                'assets/weight_gain.jpg', // Replace 'assets/weight_loss1.png' with your image path
                height: 200, // Adjust the height as needed
                fit: BoxFit.contain, // Adjust the fit as needed
              ),
              const Text(
                'Calorie Calculator',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Enter Your Information:'),
                      const TextField(
                        decoration: InputDecoration(labelText: 'Age'),
                        keyboardType: TextInputType.number,
                      ),
                      const TextField(
                        decoration: InputDecoration(labelText: 'Height (cm)'),
                        keyboardType: TextInputType.number,
                      ),
                      const TextField(
                        decoration: InputDecoration(labelText: 'Weight (kg)'),
                        keyboardType: TextInputType.number,
                      ),
                      DropdownButtonFormField(
                        items: const [
                          DropdownMenuItem(child: Text('Male'), value: 'male'),
                          DropdownMenuItem(child: Text('Female'), value: 'female'),
                        ],
                        onChanged: (value) {
                          // Handle gender selection
                        },
                        decoration: const InputDecoration(labelText: 'Gender'),
                      ),
                      DropdownButtonFormField(
                        items: const [
                          DropdownMenuItem(child: Text('Sedentary'), value: 'sedentary'),
                          DropdownMenuItem(child: Text('Moderate'), value: 'moderate'),
                          DropdownMenuItem(child: Text('Active'), value: 'active'),
                        ],
                        onChanged: (value) {
                          // Handle activity level selection
                        },
                        decoration: const InputDecoration(labelText: 'Activity Level'),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          // Calculate calories
                        },
                        child: const Text('Calculate Calories'),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Current Weight Gain Plan',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Plan : My Weight Gain Journey',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      const Text('Goal: Lose 10 pounds in 2 months'),
                      const Text('Calorie Target: 1500 kcal/day'),
                      const Text('Macronutrient Ratios: 40% carbs, 30% protein, 30% fat'),
                      const Text('Meal Schedule: 3 meals + 2 snacks per day'),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Implement edit functionality
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black, // Text color of the button
                            ),
                            child: const Text(
                              'Edit Plan',
                              style: TextStyle(
                                color: Colors.orange, // Text color of the button text
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Implement edit functionality
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange, // Text color of the button
                            ),
                            child: const Text(
                              'Delete Plan',
                              style: TextStyle(
                                color: Colors.white, // Text color of the button text
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Implement edit functionality
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue, // Text color of the button
                ),
                child: const Text(
                  'Create plan',
                  style: TextStyle(
                    color: Colors.white, // Text color of the button text
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}