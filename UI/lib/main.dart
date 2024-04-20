


import 'package:anbessafit/presentation/screens/addplan.dart';
import 'package:anbessafit/presentation/screens/create_plan_page_weight_gain.dart';
import 'package:anbessafit/presentation/screens/create_plan_page_weight_loss.dart';
import 'package:anbessafit/presentation/screens/excercise.dart';

import 'package:anbessafit/presentation/screens/height_selection_screen.dart';
import 'package:anbessafit/presentation/screens/home.dart';
import 'package:anbessafit/presentation/screens/role_selection_screen.dart';

import 'package:flutter/material.dart';
import 'presentation/screens/gender_selection_screen.dart';
import 'presentation/screens/home_screen.dart';
import 'presentation/screens/weight_selection_screen.dart';
import 'presentation/screens/welocome_screen.dart';
import 'presentation/screens/signin_screen.dart';
import 'presentation/screens/signup_screen.dart';
import 'presentation/screens/forget_password.dart';

import 'presentation/screens/weight_gain_screen.dart';
import 'presentation/screens/weight_loss_screen.dart';
import 'presentation/screens/nutrition.dart';
import 'presentation/screens/workoutplan.dart';
void main() {
  runApp(MaterialApp(
      
      routes: {
        '/': (context) => HomePageLoading(),
        '/WelcomeScreen': (context) => WelcomeScreen(),
        '/SignUpScreen': (context) => SignUpScreen(),
        '/SignInScreen': (context) => SignInScreen(),
        '/ForgetPasswordScreen': (context) => ForgetPasswordScreen (),
        '/RoleSelection': (context) => RoleSelection(),
        '/GenderSelectionScreen': (context) => GenderSelectionScreen(),
        '/WeightSelectionScreen': (context) => WeightSelectionScreen(),
        '/HeightSelectionScreen': (context) => HeightSelectionScreen(),
        '/Home': (context) => HomePageHome(),
        '/WeightLossScreen': (context) => WeightLossScreen(),
        '/WeightGainScreen': (context) => WeightGainScreen(),


        '/NutritionPage': (context) => NutritionPage(),
        '/WeightGainPage': (context) => WeightGainScreen(),
        '/WeightLossPage': (context) => WeightLossScreen(),
        '/Workoutplan': (context) => Workoutplan(),
        '/Addplan': (context) => Addplan(),
        '/ExercisePage': (context) => ExercisePage(),
        '/CreatePlanWeightGain': (context) => CreatePlanWeightGain(),
        '/CreatePlanWeightLoss': (context) => CreatePlanWeightLoss(),
      }
  
  ));
}

