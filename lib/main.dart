
import 'dart:async';


import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import'package:bitebook/models/notifications.dart';

import 'package:bitebook/blocks/cblock.dart';
import 'package:bitebook/blocks/dblock.dart';
import 'package:bitebook/blocks/ablock.dart';
import 'package:bitebook/blocks/bblock.dart';
import 'package:firebase_in_app_messaging/firebase_in_app_messaging.dart';



const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    description:
    'This channel is used for important notifications.', // description
    importance: Importance.high,
    playSound: true);
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
FlutterLocalNotificationsPlugin();
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {

  print('A bg message just showed up :  ${message.messageId}');
}


Future<void> main() async {
WidgetsFlutterBinding.ensureInitialized();

SystemChrome.setPreferredOrientations([
  DeviceOrientation.portraitDown,
  DeviceOrientation.portraitUp
],);

  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);


  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
      AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );


  runApp(MyApp());

}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

  return
    MaterialApp(debugShowCheckedModeBanner: false,

      home:HomePage());
  }}


class HomePage extends StatefulWidget {
 HomePage({Key? key, this.title}) : super(key: key);

  final String? title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  int _selectedValue = 1;
  late final FirebaseMessaging _messaging;
  PushNotification? _notificationInfo;



  @override
  void initState() {
    super.initState();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                channelDescription: channel.description,
                color: Colors.blue,
                playSound: true,
                icon: '@mipmap/ic_launcher',
              ),
            ));
      }
    });

    FirebaseInAppMessaging.instance.setMessagesSuppressed(false);
    FirebaseInAppMessaging.instance.triggerEvent("automatic_trigger");

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('A new onMessageOpenedApp event was published!');
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null) {
        showDialog(
            context: context as BuildContext,
            builder: (_) {
              return AlertDialog(
                title: Text(notification.title!),
                content: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text(notification.body!)],
                  ),
                ),
              );
            });
      }
    });
  }


  Future<int> _loadSelectedValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int selectedValue = prefs.getInt('selectedValue') ?? 1;
    return selectedValue;
  }

  void _saveSelectedValue(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('selectedValue', value);
  }


  void _resetSelectedValue() {
    setState(() {
      _selectedValue = 1;
      _saveSelectedValue(_selectedValue);
    });
  }

  @override
  Widget build(BuildContext context) {

    return
        Container(
      child: Scaffold(


        body: Column(

          children: [


               Container(),
            Expanded(
              child: FutureBuilder(
                future: _loadSelectedValue(),
                builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                  if (snapshot.hasData) {
                    _selectedValue = snapshot.data!;
                    if (_selectedValue == 1) {
                      return ablock();
                    } else if (_selectedValue == 2) {
                      return bblock();
                    } else if (_selectedValue == 3) {
                      return cblock();
                    } else {
                      return dblock();
                    }
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
          ],

        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedValue - 1,
          onTap: (int index) {
            setState(() {
              _selectedValue = index + 1;
              _saveSelectedValue(_selectedValue);
            });
          },
          type: BottomNavigationBarType.fixed, //
          backgroundColor: Colors.black, //
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.grey,
          items: [

            BottomNavigationBarItem(
              label: 'A-Block',
              icon: FaIcon(
                FontAwesomeIcons.a,
                color: Colors.yellow,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              label: 'B-Block',
              icon: FaIcon(
                FontAwesomeIcons.b,
                color: Colors.yellow,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              label: 'C-Block',
              icon: FaIcon(
                FontAwesomeIcons.c,
                color: Colors.yellow,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              label: 'D-Block',
              icon: FaIcon(
                FontAwesomeIcons.d,
                color: Colors.yellow,
                size: 30,
              ),
            ),
          ],
        ),

      ),
      );

  }
}











