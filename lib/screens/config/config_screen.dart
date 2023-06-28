import 'package:flutter/material.dart';
import 'package:simple_store_checker/utils/locale.dart';
import 'package:simple_store_checker/utils/prefs.dart';

class ConfigScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ConfigScreen();
}

class _ConfigScreen extends State<ConfigScreen> {
  final TextStyle ts1 = const TextStyle(
      fontWeight: FontWeight.bold, color: Colors.green, fontSize: 18);
  final TextStyle ts2 = const TextStyle(
      fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18);
  final TextStyle ts3 = const TextStyle(
      fontWeight: FontWeight.normal, color: Colors.black, fontSize: 18);
  final TextEditingController _editUsername = TextEditingController();
  final TextEditingController _editPassword = TextEditingController();
  String _server = '';
  String _port = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            minimum: const EdgeInsets.fromLTRB(10, 15, 10, 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                for (var e in servers) ...[
                  TextButton(
                      onPressed: () {
                        setState(() {
                          _server = e.values.first.split(':').first;
                          _port = e.values.first.split(':').last;
                        });
                      },
                      child: Text(
                        e.keys.first,
                        style: _server == e.values.first.split(':').first
                            ? ts1
                            : ts2,
                      ))
                ],
                const SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text(lo(strUsername), style: ts3),
                  TextFormField(
                    controller: _editUsername,
                  ),
                  Text(lo(strPassword), style: ts3),
                  TextFormField(
                    controller: _editPassword,
                  ),
                ]),
                const SizedBox(height: 30),
                TextButton(
                    onPressed: () {
                      prefs.setString(lcServerAddress, _server);
                      prefs.setString(lcServerPort, _port);
                      prefs.setString(lcUsername, _editUsername.text);
                      prefs.setString(lcPassword, _editPassword.text);
                      Navigator.pushNamed(context, '/');
                    },
                    child: Text(
                      lo(strSave), style: ts2
                    ))
              ],
            )));
  }
}
