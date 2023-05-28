import 'package:fitnesh/screens/create_workout/create_workout.dart';
import 'package:fitnesh/screens/friends_workouts/friends_workout.dart';
import 'package:fitnesh/screens/home/custom_home_button.dart';
import 'package:fitnesh/screens/past_workouts/past_workouts_screen.dart';
import 'package:fitnesh/screens/planned_workouts/planned_workouts_screen.dart';
import 'package:fitnesh/screens/search_workouts/search_workouts.dart';
import 'package:fitnesh/screens/workout_invites/workout_invites.dart';
import 'package:fitnesh/widgets/screen_wrapper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final double buttonMargin = 25;
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenWrapper(
        content: Center(
          child: Container(
            padding: EdgeInsets.all(buttonMargin), // Padding around the grid
            child: GridView.count(
              crossAxisCount: 2, // Number of columns in the grid
              crossAxisSpacing: buttonMargin, // Spacing between columns
              mainAxisSpacing: buttonMargin, // Spacing between rows
              children: const [
                CustomHomeButton(
                    screen: SearchWorkoutsScreen(),
                    label: "SEARCH",
                    icon: Icons.search),
                CustomHomeButton(
                  screen: CreateWorkoutScreen(),
                  label: "CREATE",
                  icon: Icons.add_circle,
                ),
                CustomHomeButton(
                    screen: PlannedWorkoutsScreen(),
                    label: "PLANNED WORKOUTS",
                    icon: Icons.watch_later),
                CustomHomeButton(
                    screen: PastWorkoutsScreen(),
                    label: "PAST WORKOUTS",
                    icon: Icons.playlist_add_check_sharp),
                CustomHomeButton(
                    screen: FriendsWorkoutsScreen(),
                    label: "FRIENDS WORKOUTS",
                    icon: Icons.people_alt),
                CustomHomeButton(
                    screen: WorkoutInvitesScreen(),
                    label: "WORKOUT INVITES",
                    icon: Icons.mark_email_unread)
              ],
            ),
          ),
        ),
        selectedIndex: 2);
  }
}
