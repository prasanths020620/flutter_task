



import '../services/remainder_services.dart';
import '../utils/model.dart';

class ReminderController {
  List<String> daysOfWeek = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];
  List<String> timeList = ['6:00 AM', '7:00 AM', '8:00 AM', '9:00 AM', '10:00 AM'];
  List<String> activityList = ['Wake up', 'Go to gym', 'Breakfast', 'Meetings', 'Lunch', 'Quick nap', 'Go to library', 'Dinner', 'Go to sleep'];

  void setReminder(String day, String time, String activity) {
    ReminderModel reminder = ReminderModel(day: day, time: time, activity: activity);
    ReminderService().scheduleReminder(reminder);
  }
}
