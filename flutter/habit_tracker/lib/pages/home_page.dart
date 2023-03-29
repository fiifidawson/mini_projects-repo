
import 'package:flutter/material.dart';
import 'package:habit_tracker/components/habit_tile.dart';

import '../components/my_fab.dart';
import '../components/new_habit_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // data structure for today's list
  List todaysHabitList = [
    // [habitName, habitCompleted]
    ["Morning Run", false],
    ["Read Book", false],
    ["Code App", false]
  ];

  // checkbox was tapped
  void checkboxTapped(bool? value, int index) {
    setState(() {
      todaysHabitList[index][1] = value;
    });
  }

  // create a new habit
  final _newHabitNameController = TextEditingController();
  void createNewHabit() {
    // show alert dialog for user to enter the new habit details
    showDialog(
        context: context,
        builder: (contex) {
          return EnterNewHabitBox(
            controller: _newHabitNameController,
            onSave: saveNewHabit,
            onCancel: cancelNewHabit,
          );
        });
  }

  // save the new habit
  void saveNewHabit() {
    //clear text field
    _newHabitNameController.clear();
    // pop dialog box
    Navigator.of(context).pop();
  }

  // cancel the new habit
  void cancelNewHabit() {
    // add new habit to taday's habit list
    setState(() {
      todaysHabitList.add([_newHabitNameController.text, false]);
    });
    //clear text field
    _newHabitNameController.clear();
    // pop dialog box
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        floatingActionButton: MyFloatingActionButton(onPressed: createNewHabit),
        body: ListView.builder(
          itemCount: todaysHabitList.length,
          itemBuilder: (context, index) {
            return HabitTile(
                habitName: todaysHabitList[index][0],
                habitCompleted: todaysHabitList[index][1],
                onChanged: (value) => checkboxTapped(value, index));
          },
        )
      );
  }
}
