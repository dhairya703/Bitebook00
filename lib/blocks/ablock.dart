import 'package:bitebook/menu/ablock/vegc1.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bitebook/main.dart';
// import 'package:bitebook/menu/ablock/vegc1.dart';
import 'package:bitebook/menu/ablock/vegc2.dart';
import 'package:bitebook/menu/ablock/nonvegc1.dart';
import 'package:bitebook/menu/ablock/nonvegc2.dart';
import 'package:bitebook/menu/ablock/specialc1.dart';
import 'package:bitebook/menu/ablock/specialc2.dart';
import 'package:url_launcher/url_launcher_string.dart';
/*
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
*/
class ablock extends StatefulWidget {
  const ablock({super.key});

  @override
  State<ablock> createState() => _ablockState();
}

class _ablockState extends State<ablock> {
  final FirebaseStorage storage = FirebaseStorage.instance;
  int _selectedOption = 0;

  @override
  void initState() {
    super.initState();
    _loadSelectedOption();
  }
  launchURL(String url) async {
    if(await canLaunchUrlString(url)){
      await launchUrlString(url);
    }
    else{
      throw 'Could not launch $url';
    }
  }

  void _loadSelectedOption() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _selectedOption = prefs.getInt('selectedOption') ?? 0;
      switch (_selectedOption) {
        case 3:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) =>vegc1()),
          );
          break;
        case 4:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => nonvegc1()),
          );
          break;
        case 5:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => specialc1()),
          );
          break;
        case 6:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => vegc2()),
          );
          break;
        case 7:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => nonvegc2()),
          );
          break;
        case 8:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => specialc2()),
          );
          break;
      }
    });
  }
  void _selectOption(int index) async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _selectedOption = index;
      prefs.setInt('selectedOption', index);
      switch (index) {
        case 3:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => vegc1()),
          );
          break;
        case 4:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => nonvegc1()),
          );
          break;
        case 5:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => specialc1()),
          );
          break;
        case 6:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => vegc2()),
          );
          break;
        case 7:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => nonvegc2()),
          );
          break;
        case 8:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => specialc2()),
          );
          break;

      }
    });
  }


  void _resetOptions(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('selectedOption');
    Navigator.pop( context); // Close the side menu
    Navigator.pushReplacement(
       context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true,
          title: const Text('A-Block Mess Menu',style: TextStyle(color: Colors.amber,fontSize: 25)
          ),backgroundColor: Colors.black,
        ),drawer: Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: Text('Bite Book',style: TextStyle(fontStyle:FontStyle.italic,fontSize: 20),),
          ),
          ListTile(
            title: const Text('Reset Mess options',style: TextStyle(fontSize: 15),),
            onTap: () => _resetOptions(context),
          ),
          ElevatedButton(
            child: const Text("Update App"),
            onPressed: () async {
              String url = "https://drive.google.com/drive/folders/1mRwwlYOjKkX-kfxYz0EDIs-JawXEkQBy";
              var urllaunchable = await canLaunchUrlString(url); //canLaunch is from url_launcher package
              if(urllaunchable){
                await launchURL(url); //launch is from url_launcher package to launch URL
              }else{
                print("URL can't be launched.");
              }
            },
          ),

        ],
      ),
    ),

        body:Container(
          width: double.infinity,height: 1000,decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),

          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const Text("Select your Mess",style: TextStyle(fontSize: 30,color:Colors.black87,fontWeight: FontWeight.bold,fontStyle:FontStyle.italic),),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60.0, vertical: 20.0),side: const BorderSide(width:4, color: Colors.black),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    backgroundColor: Colors.black87),
                onPressed: () {_selectOption(3);Navigator.push(context,
                    MaterialPageRoute(builder: (context) => vegc1()));

                },


                child: const Text(
                  'c1 Veg Mess', style: TextStyle(color: Colors.amber, fontSize: 25),

                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 38.0, vertical: 20.0),side: const BorderSide(width:4, color: Colors.black),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    backgroundColor: Colors.black87),
                onPressed: () {_selectOption(4);Navigator.push(context,
                    MaterialPageRoute(builder: (context) => nonvegc1()));

                },
                child: const Text(
                  'c1 Non-Veg Mess', style: TextStyle(color: Colors.amber, fontSize: 25),
                ),
              ),
              ElevatedButton(style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      horizontal: 48.0, vertical: 20.0),side: const BorderSide(width:4, color: Colors.black),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  backgroundColor: Colors.black87),
                onPressed: () {_selectOption(5);Navigator.push(context,
                    MaterialPageRoute(builder: (context) => specialc1()));
                },
                child: const Text(
                  'c1 Special Mess', style: TextStyle(color: Colors.amber, fontSize: 25),
                ),),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: 65.0, vertical: 20.0),side: const BorderSide(width:4, color: Colors.black),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    backgroundColor: Colors.black87),
                onPressed: () {_selectOption(6);Navigator.push(context,
                    MaterialPageRoute(builder: (context) => vegc2()));

                },


                child: const Text(
                  'c2 Veg Mess', style: TextStyle(color: Colors.amber, fontSize: 25),

                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 20.0),side: const BorderSide(width:4, color: Colors.black),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    backgroundColor: Colors.black87),
                onPressed: () {_selectOption(7);Navigator.push(context,
                    MaterialPageRoute(builder: (context) => nonvegc2()));

                },
                child: const Text(
                  'c2 Non-Veg Mess', style: TextStyle(color: Colors.amber, fontSize: 25),
                ),
              ),
              ElevatedButton(style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50.0, vertical: 20.0),side: const BorderSide(width:4, color: Colors.black),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  backgroundColor: Colors.black87),
                onPressed: () {_selectOption(8);Navigator.push(context,
                    MaterialPageRoute(builder: (context) => specialc2()));
                },
                child: const Text(
                  'c2 Special Mess', style: TextStyle(color: Colors.amber, fontSize: 25),
                ),),
            ],),)
    );
  }
}
