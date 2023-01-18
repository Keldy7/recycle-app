// import 'package:shared_preferences/shared_preferences.dart';

// class UserData {
//   static SharedPreferences _preferences;

//   static const _keyName = 'name';
//   static const _keyEmail = 'email';
//   static const _keyPasswd = 'passwd';
//   static const _keyConfPasswd = 'confpasswd';

//   static Future init() async =>
//       _preferences = await SharedPreferences.getInstance();

//   //Getter et setter du nom d'utilisateur
//   static Future setName(String name) async =>
//       await _preferences.setString(_keyName, name);

//   static String? getName() => _preferences.getString(_keyName);
  
//   //Getter et setter de l'email
//   static Future setEmail(String email) async =>
//       await _preferences.setString(_keyEmail, email);

//   static String? getEmail() => _preferences.getString(_keyEmail);
  
//   //Getter et setter du mot de passe
//   static Future setPasswd(String passwd) async =>
//       await _preferences.setString(_keyPasswd, passwd);

//   static String? getPasswd() => _preferences.getString(_keyPasswd);

//   //Getter et setter du mot de passe confirmé
//   static Future setConfPasswd(String confpasswd) async =>
//       await _preferences.setString(_keyConfPasswd, confpasswd);

//   static String? getConfPasswd() => _preferences.getString(_keyConfPasswd);

  
// }