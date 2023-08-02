
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:bitebook/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import'package:bitebook/menu/dblock/dnonveg.dart';
import'package:bitebook/menu/dblock/dspecial.dart';
import'package:bitebook/menu/dblock/dveg.dart';
class dblock extends StatefulWidget {
  const dblock({super.key});

  @override
  State<dblock> createState() => _dblockState();
}

class _dblockState extends State<dblock> {
  final FirebaseStorage storage = FirebaseStorage.instance;
  int _selectedOption = 0;

  @override
  void initState() {
    super.initState();
    _loadSelectedOption();
  }
  launchURL(String url) async {
    if(await canLaunch(url)){
      await launch(url,forceWebView: true);
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
            MaterialPageRoute(builder: (context) =>WeekdayPage()),
          );
          break;
        case 4:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => NonvegPage()),
          );
          break;
        case 5:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => specialpage()),
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
            MaterialPageRoute(builder: (context) => WeekdayPage()),
          );
          break;
        case 4:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NonvegPage()),
          );
          break;
        case 5:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => specialpage()),
          );
          break;
      }
    });
  }


  void _resetOptions(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('selectedOption');
    Navigator.pop(context); // Close the side menu
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true,
          title: Text('D-Block Mess Menu',style: TextStyle(color: Colors.amber,fontSize: 25)
          ),backgroundColor: Colors.black,
        ),drawer: Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text('Bite Book',style: TextStyle(fontStyle:FontStyle.italic,fontSize: 20),),
          ),
          ListTile(
            title: Text('Reset Mess options',style: TextStyle(fontSize: 15),),
            onTap: () => _resetOptions(context),
          ),
          ElevatedButton(onPressed: () async {
            String url = "https://drive.google.com/drive/folders/1mRwwlYOjKkX-kfxYz0EDIs-JawXEkQBy";
            var urllaunchable = await canLaunch(url); //canLaunch is from url_launcher package
            if(urllaunchable){
              await launch(url); //launch is from url_launcher package to launch URL
            }else{
              print("URL can't be launched.");
            }
          }, child: Text("Vit Chennai events"),),
          ElevatedButton(
            child: Text("Update App"),
            onPressed: () async {
              String url = "https://drive.google.com/drive/folders/1mRwwlYOjKkX-kfxYz0EDIs-JawXEkQBy";
              var urllaunchable = await canLaunch(url); //canLaunch is from url_launcher package
              if(urllaunchable){
                await launch(url); //launch is from url_launcher package to launch URL
              }else{
                print("URL can't be launched.");
              }
            },
          ),
        ],
      ),
    ),

        body:Container(
          width: double.maxFinite,height: 1000,decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/blank.png"),
            fit: BoxFit.cover,
          ),
        ),

          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("Select your Mess",style: TextStyle(fontSize: 40,color:Colors.black87,fontWeight: FontWeight.bold,fontFamily:"Monchesterras"),),
            Container(  width: double.infinity,height:200,
             decoration:BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/boy.jpg"),
                fit: BoxFit.fitHeight,
              ),
            ),
            ),

SizedBox(width: MediaQuery.of(context).size.width*0.9,
  height:  MediaQuery.of(context).size.height*0.09,
  child:

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                   side: const BorderSide(width:2, color: Colors.black),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    primary: Colors.black87),
                onPressed: () {_selectOption(3);Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WeekdayPage()));

                },


                child:  Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '🥦 D Block Veg Mess',
                    style: TextStyle(color: Colors.amber, fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),),
          SizedBox(width: MediaQuery.of(context).size.width*0.9,
            height:  MediaQuery.of(context).size.height*0.09,
            child:
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    side: const BorderSide(width:4, color: Colors.black),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    primary: Colors.black87),
                onPressed: () {_selectOption(4);Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NonvegPage()));

                },
                child:Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    ' 🍗 D Block Non-Veg Mess',
                    style: TextStyle(color: Colors.amber, fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),),
          SizedBox(width: MediaQuery.of(context).size.width*0.9,
            height:  MediaQuery.of(context).size.height*0.09,
            child:
              ElevatedButton(style: ElevatedButton.styleFrom(
                  side: const BorderSide(width:4, color: Colors.black),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  primary: Colors.black87),
                onPressed: () {_selectOption(5);Navigator.push(context,
                    MaterialPageRoute(builder: (context) => specialpage()));
                },

                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    ' 🍔 D Block Special Mess',
                    style: TextStyle(color: Colors.amber, fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ),),),

            ],),)
    );


  }
}
