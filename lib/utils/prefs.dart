import 'package:shared_preferences/shared_preferences.dart';

late final SharedPreferences prefs;
final List<Map<String, String>> servers = [];

const lcServerAddress = 'serverAddress';
const lcServerPort = 'serverPort';
const lcUsername = 'username';
const lcPassword = 'password';

const rcServerList = 'serverList';