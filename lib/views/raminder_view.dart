import 'package:flutter/material.dart';


import '../controller/reminder_controller.dart';
import '../utils/custom_widgets.dart';

class ReminderPage extends StatefulWidget {
  @override
  _ReminderPageState createState() => _ReminderPageState();
}

class _ReminderPageState extends State<ReminderPage> {
  final ReminderController controller = ReminderController();

  String? selectedDay;
  String? selectedTime;
  String? selectedActivity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: buildText('Reminder App', 20)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            buildText('Set your daily reminders', 18),
            SizedBox(height: 20),
            DropdownButton<String>(
              hint: buildText('Select Day', 16),
              value: selectedDay,
              items: controller.daysOfWeek.map((String day) {
                return DropdownMenuItem<String>(
                  value: day,
                  child: buildText(day, 16),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedDay = value;
                });
              },
            ),
            SizedBox(height: 20),
            DropdownButton<String>(
              hint: buildText('Select Time', 16),
              value: selectedTime,
              items: controller.timeList.map((String time) {
                return DropdownMenuItem<String>(
                  value: time,
                  child: buildText(time, 16),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedTime = value;
                });
              },
            ),
            SizedBox(height: 20),
            DropdownButton<String>(
              hint: buildText('Select Activity', 16),
              value: selectedActivity,
              items: controller.activityList.map((String activity) {
                return DropdownMenuItem<String>(
                  value: activity,
                  child: buildText(activity, 16),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedActivity = value;
                });
              },
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                if (selectedDay != null && selectedTime != null && selectedActivity != null) {
                  controller.setReminder(selectedDay!, selectedTime!, selectedActivity!);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: buildText('Reminder set!', 16)),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: buildText('Please fill all fields', 16)),
                  );
                }
              },
              child: buildText('Set Reminder', 16),
            ),
          ],
        ),
      ),
    );
  }
}
