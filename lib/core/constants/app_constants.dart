class AppConstants {
  // App Information
  static const String appName = 'AI Calendar Todo App';
  static const String appVersion = '1.0.0';

  // API Constants
  static const String openAIApiUrl = 'https://api.openai.com/v1';
  static const String googleCalendarApiUrl =
      'https://www.googleapis.com/calendar/v3';

  // Firebase Collections
  static const String usersCollection = 'users';
  static const String tasksCollection = 'tasks';
  static const String eventsCollection = 'events';
  static const String chatMessagesCollection = 'chatMessages';

  // Local Storage Keys
  static const String userPreferencesBox = 'userPreferences';
  static const String tasksBox = 'tasks';
  static const String eventsBox = 'events';
  static const String chatMessagesBox = 'chatMessages';

  // UI Constants
  static const double defaultPadding = 16.0;
  static const double smallPadding = 8.0;
  static const double largePadding = 24.0;

  // Animation Durations
  static const Duration shortAnimationDuration = Duration(milliseconds: 200);
  static const Duration mediumAnimationDuration = Duration(milliseconds: 400);
  static const Duration longAnimationDuration = Duration(milliseconds: 600);
}
