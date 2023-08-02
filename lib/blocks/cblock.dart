
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bitebook/menu/cblock/vegc5.dart';
import 'package:bitebook/menu/cblock/nonvegc5.dart';
import 'package:bitebook/menu/cblock/specialc5.dart';
import 'package:bitebook/main.dart';


class cblock extends StatefulWidget {
  const cblock({super.key});

  @override
  State<cblock> createState() => _cblockState();
}

class _cblockState extends State<cblock> {
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
            MaterialPageRoute(builder: (context) =>vegc5()),
          );
          break;
        case 4:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => nonvegc5()),
          );
          break;
        case 5:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => specialc5()),
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
            MaterialPageRoute(builder: (context) => vegc5()),
          );
          break;
        case 4:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => nonvegc5()),
          );
          break;
        case 5:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => specialc5()),
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
            child:ElevatedButton(
              style: ElevatedButton.styleFrom(
                  side: const BorderSide(width:2, color: Colors.black),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  primary: Colors.black87),
              onPressed: () {_selectOption(3);Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>  vegc5()));

              },


              child:  Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '🥦 C Block Veg Mess',
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
                      MaterialPageRoute(builder: (context) => nonvegc5()));

                  },
                  child:Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      ' 🍗 C Block Non-Veg Mess',
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
                      MaterialPageRoute(builder: (context) => specialc5()));
                  },

                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      ' 🍔 C Block Special Mess',
                      style: TextStyle(color: Colors.amber, fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  ),),),


              // ElevatedButton(
              //   style: ElevatedButton.styleFrom(
              //       padding: EdgeInsets.symmetric(
              //           horizontal: 65.0, vertical: 20.0),side: const BorderSide(width:4, color: Colors.black),
              //       shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(10.0)),
              //       primary: Colors.black87),
              //   onPressed: () {_selectOption(6);Navigator.push(context,
              //       MaterialPageRoute(builder: (context) => vegc6()));
              //
              //   },
              //
              //
              //   child: Text(
              //     'c6 Veg Mess', style: TextStyle(color: Colors.amber, fontSize: 25),
              //
              //   ),
              // ),
              // ElevatedButton(
              //   style: ElevatedButton.styleFrom(
              //       padding: EdgeInsets.symmetric(
              //           horizontal: 40.0, vertical: 20.0),side: const BorderSide(width:4, color: Colors.black),
              //       shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(10.0)),
              //       primary: Colors.black87),
              //   onPressed: () {_selectOption(7);Navigator.push(context,
              //       MaterialPageRoute(builder: (context) => nonvegc6()));
              //
              //   },
              //   child: Text(
              //     'c6 Non-Veg Mess', style: TextStyle(color: Colors.amber, fontSize: 25),
              //   ),
              // ),
              // ElevatedButton(style: ElevatedButton.styleFrom(
              //     padding: EdgeInsets.symmetric(
              //         horizontal: 50.0, vertical: 20.0),side: const BorderSide(width:4, color: Colors.black),
              //     shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(10.0)),
              //     primary: Colors.black87),
              //   onPressed: () {_selectOption(8);Navigator.push(context,
              //       MaterialPageRoute(builder: (context) => specialc6()));
              //   },
              //   child: Text(
              //     'c6 Special Mess', style: TextStyle(color: Colors.amber, fontSize: 25),
              //   ),),
            ],),)
    );


  }
}
