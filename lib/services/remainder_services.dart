import 'package:flutter_local_notifications/flutter_local_notifications.dart';



import '../utils/model.dart';

class ReminderService {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  void scheduleReminder(ReminderModel reminder) {
    // Logic to schedule a notification with sound or chime
    // You can use flutter_local_notifications to schedule the notification at the desired time.
  }
}