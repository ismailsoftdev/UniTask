/* LIST OF API CONSTANTS TO BE USED IN THE APP */

// api constants
class UApiConstants {
  UApiConstants._(); // private constructor

  // base url
  static const String baseUrl = 'localhost:3000';

  // auth api endpoints
  static const String loginEndpoint = '$baseUrl/accounts/login';
  static const String signupEndpoint = '$baseUrl/accounts/signup';
  static const String getUserEndpoint = '$baseUrl/accounts/user';

  // task api endpoints
  static const String createTaskEndpoint = '$baseUrl/create-task';
  static const String getTaskEndpoint = '$baseUrl/get-task';
  static const String updateTaskEndpoint = '$baseUrl/update-task';
  static const String deleteTaskEndpoint = '$baseUrl/delete-task';
  static const String getTasksEndpoint = '$baseUrl/get-tasks';

  // event api endpoints
  static const String createEventEndpoint = '$baseUrl/create-event';
  static const String getEventEndpoint = '$baseUrl/get-event';
  static const String updateEventEndpoint = '$baseUrl/update-event';
  static const String deleteEventEndpoint = '$baseUrl/delete-event';
  static const String getEventsEndpoint = '$baseUrl/get-events';

  // group api endpoints
  static const String createGroupEndpoint = '$baseUrl/create-group';
  static const String getGroupEndpoint = '$baseUrl/get-group';
  static const String updateGroupEndpoint = '$baseUrl/update-group';
  static const String deleteGroupEndpoint = '$baseUrl/delete-group';
  static const String getGroupsEndpoint = '$baseUrl/get-groups';

  // post api endpoints
  static const String createPostEndpoint = '$baseUrl/create-post';
  static const String getPostEndpoint = '$baseUrl/get-post';
  static const String updatePostEndpoint = '$baseUrl/update-post';
  static const String deletePostEndpoint = '$baseUrl/delete-post';
  static const String getPostsEndpoint = '$baseUrl/get-posts';
}
