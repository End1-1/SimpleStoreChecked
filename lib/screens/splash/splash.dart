import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_store_checker/screens/app_scaffold/app_scaffold.dart';
import 'package:simple_store_checker/utils/prefs.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(child:  Center(child: Image.asset('assets/images/elina.png')),
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) async {
      prefs = await SharedPreferences.getInstance();
      try {
        Firebase.initializeApp().then((app) {
          final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig
              .instance;
          remoteConfig.setConfigSettings(RemoteConfigSettings(
            fetchTimeout: const Duration(seconds: 20),
            minimumFetchInterval: const Duration(minutes: 1),
          ));
          remoteConfig.fetchAndActivate();
          List<dynamic> listServers =
          jsonDecode(remoteConfig.getString(rcServerList));
          listServers.forEach((e) {
            print(e);
            e.keys.forEach((k) => servers.add({k: e[k]}));
          });
          print(servers);
        });
        if (prefs
            .getString(lcServerAddress)
            ?.isEmpty ?? ''.isEmpty) {
          Navigator.pushNamed(context, '/config');
        } else {
          Navigator.pushNamed(context, '/');
        }
      } catch (e) {
        Navigator.pushNamed(context, '/');
      }
    });
  }
}
