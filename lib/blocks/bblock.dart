import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bitebook/main.dart';
import 'package:bitebook/menu/bblock/vegc3.dart';
import 'package:bitebook/menu/bblock/vegc4.dart';
import 'package:bitebook/menu/bblock/nonvegc3.dart';
import 'package:bitebook/menu/bblock/nonvegc4.dart';
import 'package:bitebook/menu/bblock/specialc3.dart';
import 'package:bitebook/menu/bblock/specialc4.dart';
import 'package:url_launcher/url_launcher_string.dart';



class bblock extends StatefulWidget {
  const bblock({super.key});

  @override
  State<bblock> createState() => _bblockState();
}

class _bblockState extends State<bblock> {
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
            MaterialPageRoute(builder: (context) =>vegc3()),
          );
          break;
        case 4:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => nonvegc3()),
          );
          break;
        case 5:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => specialc3()),
          );
          break;
        case 6:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => vegc4()),
          );
          break;
        case 7:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => nonvegc4()),
          );
          break;
        case 8:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => specialc4()),
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
            MaterialPageRoute(builder: (context) => vegc3()),
          );
          break;
        case 4:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => nonvegc3()),
          );
          break;
        case 5:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => specialc3()),
          );
          break;
        case 6:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => vegc4()),
          );
          break;
        case 7:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => nonvegc4()),
          );
          break;
        case 8:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => specialc4()),
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
          title: const Text('B-Block Mess Menu',style: TextStyle(color: Colors.amber,fontSize: 25)
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
          width: double.maxFinite,height: double.maxFinite,decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/io.jpeg"),
            fit: BoxFit.cover,
              alignment: AlignmentDirectional(10, 20)
          ),
        ),

          child:
          SingleChildScrollView(scrollDirection: Axis.vertical,
    child:Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(height: MediaQuery.of(context).size.height ,
                width: double.maxFinite,
                child:
                Column(children:[

                      const Text("Select your Mess",style:  TextStyle(fontSize: 30,color:Colors.black87,fontWeight: FontWeight.bold,fontFamily: "Mocherrates"),),
                      Container(  width: double.infinity,height:200,
                        decoration:BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/girl.jpg"),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                  Wrap(direction: Axis.vertical,
                spacing: 10,
                    children: <Widget>[
                      SizedBox(
                          width: MediaQuery.of(context).size.width*.9, // <-- Your width
                          height: MediaQuery.of(context).size.height*.09, // <-- Your height
                          child:
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 60.0, vertical: 20.0),side: const BorderSide(width:4, color: Colors.black),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            backgroundColor: Colors.black87),
                        onPressed: () {_selectOption(3);Navigator.push(context,
                            MaterialPageRoute(builder: (context) => vegc3()));

                        },


                        child: const Text(
                          '🥦Sakthi Veg Mess', style: TextStyle(color: Colors.amber, fontSize: 25),

                        ),
                      ),),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*.9, // <-- Your width
                      height: MediaQuery.of(context).size.height*.09, // <-- Your height
                      child:
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 38.0, vertical: 20.0),side: const BorderSide(width:4, color: Colors.black),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            backgroundColor: Colors.black87),
                        onPressed: () {_selectOption(4);Navigator.push(context,
                            MaterialPageRoute(builder: (context) => nonvegc3()));

                        },
                        child: const Text(
                          '🍗Sakthi Non-Veg Mess', style: TextStyle(color: Colors.amber, fontSize: 25),
                        ),
                      ),),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*.9, // <-- Your width
                      height: MediaQuery.of(context).size.height*.09, // <-- Your height
                      child:
                      ElevatedButton(style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 45.0, vertical: 20.0),side: const BorderSide(width:4, color: Colors.black),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          backgroundColor: Colors.black87),
                        onPressed: () {_selectOption(5);Navigator.push(context,
                            MaterialPageRoute(builder: (context) => specialc3()));
                        },
                        child: Text(
                          '🍖Sakthi Special Mess', style: TextStyle(color: Colors.amber, fontSize: 25),
                        ),),),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*.9, // <-- Your width
                      height: MediaQuery.of(context).size.height*.09, // <-- Your height
                      child:
                      ElevatedButton(
                        style: ElevatedButton.styleFrom( minimumSize: const Size.fromHeight(30),
                            padding: EdgeInsets.symmetric(
                                horizontal: 60.0, vertical: 20.0),side: const BorderSide(width:4, color: Colors.black),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            backgroundColor: Colors.black87),
                        onPressed: () {_selectOption(6);Navigator.push(context,
                            MaterialPageRoute(builder: (context) => vegc4()));

                        },


                        child: Text(
                          '🥦Abfc Veg Mess', style: TextStyle(color: Colors.amber, fontSize: 25),

                        ),
                      ),),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*.9, // <-- Your width
                      height: MediaQuery.of(context).size.height*.09, // <-- Your height
                      child:
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 40.0, vertical: 20.0),side: const BorderSide(width:4, color: Colors.black),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            backgroundColor: Colors.black87),
                        onPressed: () {_selectOption(7);Navigator.push(context,
                            MaterialPageRoute(builder: (context) => nonvegc4()));

                        },
                        child: Text(
                          '🍗Abfc Non-Veg Mess', style: TextStyle(color: Colors.amber, fontSize: 25),
                        ),
                      ),),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*.9, // <-- Your width
                      height: MediaQuery.of(context).size.height*.09, // <-- Your height
                      child:
                      ElevatedButton(style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 50.0, vertical: 20.0),side: const BorderSide(width:4, color: Colors.black),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          backgroundColor: Colors.black87),
                        onPressed: () {_selectOption(8);Navigator.push(context,
                            MaterialPageRoute(builder: (context) => specialc4()));
                        },
                        child: Text(
                          '🍖Abfc Special Mess', style: TextStyle(color: Colors.amber, fontSize: 25),
                        ),),),
                    ],
                  ),
                ],
              ),
              )],),)
        ) );
  }
}


