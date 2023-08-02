import 'package:flutter/material.dart';
import 'package:bitebook/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
class vegc1 extends StatefulWidget {
  @override
  _vegc1State createState() => _vegc1State();
}

class _vegc1State extends State<vegc1> {
  int _weekday = DateTime.now().weekday;

  @override
  void initState() {
    super.initState();
    _openPage();
  }
  void _resetOptions(context) async {
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
      appBar: AppBar(
        title: const Text('A-Block Veg mess c1'),),backgroundColor: Colors.purple[900],
      drawer: Drawer(
        child: ListView(
          children: [

            const DrawerHeader(
              child: Text('Bite Book',style: TextStyle(fontStyle:FontStyle.italic,fontSize: 20),),
            ),
            ListTile(
              title: const Text('Reset Mess options',style: TextStyle(fontSize: 15),),
              onTap: () => _resetOptions(context),
            ),
          ],
        ),
      ),


    );
  }

  String _getWeekdayName(int weekday) {
    switch (weekday) {
      case 1:
        return 'Monday';
      case 2:
        return 'Tuesday';
      case 3:
        return 'Wednesday';
      case 4:
        return 'Thursday';
      case 5:
        return 'Friday';
      case 6:
        return 'Saturday';
      case 7:
        return 'Sunday';
      default:
        return '';
    }
  }

  void _openPage() {
    switch (_weekday) {
      case 1:
        WidgetsBinding.instance.addPostFrameCallback((_) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) =>MondayPage()));
        });
        break;
      case 2:
        WidgetsBinding.instance.addPostFrameCallback((_) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => TuesdayPage()));
        });

        break;
      case 3:
        WidgetsBinding.instance.addPostFrameCallback((_) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) =>WednesdayPage()));
        });

        break;
      case 4:
        WidgetsBinding.instance.addPostFrameCallback((_) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => ThursdayPage()));
        });
        break;
      case 5:
        WidgetsBinding.instance.addPostFrameCallback((_) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => FridayPage()));
        });

        break;
      case 6:
        WidgetsBinding.instance.addPostFrameCallback((_) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) =>SaturdayPage()));
        });
        break;
      case 7:
        WidgetsBinding.instance.addPostFrameCallback((_) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) =>SundayPage()));
        });
        break;
    }
  }
}

class MondayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Monday Menu',style: const TextStyle(color: Colors.white,fontSize: 20),
          ),backgroundColor: Colors.purple[900],),drawer: Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text('Bite Book',style: TextStyle(fontStyle:FontStyle.italic,fontSize: 20),),
          ),
          ListTile(
            title: Text('Reset Mess options',style: TextStyle(fontSize: 15),),
            onTap: () => _resetOptions(context),
          ),
        ],
      ),
    ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[Container(height: 75,
            child: ListView(scrollDirection: Axis.horizontal,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FirstPage()));
                  },
                  child: Text('M',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),




                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SecondPage()));
                  },
                  child: Text('T',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),



                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ThirdPage()));
                  },
                  child: Text('W',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),


                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FourthPage()));
                  },
                  child: Text('T',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FivePage()));
                  },
                  child: Text('F',style: TextStyle(fontSize: 22),),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SixPage()));
                  },
                  child: Text('S',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SevenPage()));
                  },
                  child: Text('S',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),
              ],
            ),
          ),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('  oyehoye', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),

              ],
            ),
          ],
        )
    );

  }
}

class TuesdayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tuesday Menu',style: TextStyle(color: Colors.white,fontSize: 20),
          ),backgroundColor: Colors.purple[900],),drawer: Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text('Bite Book',style: TextStyle(fontStyle:FontStyle.italic,fontSize: 20),),
          ),
          ListTile(
            title: Text('Reset Mess options',style: TextStyle(fontSize: 15),),
            onTap: () => _resetOptions(context),
          ),
        ],
      ),
    ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[Container(height: 75,
            child: ListView(scrollDirection: Axis.horizontal,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FirstPage()));
                  },
                  child: Text('M',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),




                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SecondPage()));
                  },
                  child: Text('T',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),



                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ThirdPage()));
                  },
                  child: Text('W',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),


                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FourthPage()));
                  },
                  child: Text('T',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FivePage()));
                  },
                  child: Text('F',style: TextStyle(fontSize: 22),),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SixPage()));
                  },
                  child: Text('S',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SevenPage()));
                  },
                  child: Text('S',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),
              ],
            ),
          ),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('  Namaste', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),

              ],
            ),
          ],
        )
    );
  }
}

class WednesdayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Wednesday Menu',style: TextStyle(color: Colors.white,fontSize: 20),
          ),backgroundColor: Colors.purple[900],),drawer: Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text('Bite Book',style: TextStyle(fontStyle:FontStyle.italic,fontSize: 20),),
          ),
          ListTile(
            title: Text('Reset Mess options',style: TextStyle(fontSize: 15),),
            onTap: () => _resetOptions(context),
          ),
        ],
      ),
    ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[Container(height: 75,
            child: ListView(scrollDirection: Axis.horizontal,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FirstPage()));
                  },
                  child: Text('M',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),




                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SecondPage()));
                  },
                  child: Text('T',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),



                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ThirdPage()));
                  },
                  child: Text('W',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),


                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FourthPage()));
                  },
                  child: Text('T',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FivePage()));
                  },
                  child: Text('F',style: TextStyle(fontSize: 22),),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SixPage()));
                  },
                  child: Text('S',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SevenPage()));
                  },
                  child: Text('S',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),
              ],
            ),
          ),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('  kidda', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),

              ],
            ),
          ],
        )
    );
  }
}
class ThursdayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Thursday Menu',style: TextStyle(color: Colors.white,fontSize: 20),
          ),backgroundColor: Colors.purple[900],),drawer: Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text('Bite Book',style: TextStyle(fontStyle:FontStyle.italic,fontSize: 20),),
          ),
          ListTile(
            title: Text('Reset Mess options',style: TextStyle(fontSize: 15),),
            onTap: () => _resetOptions(context),
          ),
        ],
      ),
    ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[Container(height: 75,
            child: ListView(scrollDirection: Axis.horizontal,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FirstPage()));
                  },
                  child: Text('M',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),




                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SecondPage()));
                  },
                  child: Text('T',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),



                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ThirdPage()));
                  },
                  child: Text('W',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),


                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FourthPage()));
                  },
                  child: Text('T',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FivePage()));
                  },
                  child: Text('F',style: TextStyle(fontSize: 22),),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SixPage()));
                  },
                  child: Text('S',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SevenPage()));
                  },
                  child: Text('S',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),
              ],
            ),
          ),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(' fir',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),

              ],
            ),
          ],
        )
    );
  }
}

class FridayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Friday Menu',style: TextStyle(color: Colors.white,fontSize: 20),
          ),backgroundColor: Colors.purple[900],),drawer: Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text('Bite Book',style: TextStyle(fontStyle:FontStyle.italic,fontSize: 20),),
          ),
          ListTile(
            title: Text('Reset Mess options',style: TextStyle(fontSize: 15),),
            onTap: () => _resetOptions(context),
          ),
        ],
      ),
    ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[Container(height: 75,
            child: ListView(scrollDirection: Axis.horizontal,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FirstPage()));
                  },
                  child: Text('M',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),




                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SecondPage()));
                  },
                  child: Text('T',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),



                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ThirdPage()));
                  },
                  child: Text('W',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),


                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FourthPage()));
                  },
                  child: Text('T',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FivePage()));
                  },
                  child: Text('F',style: TextStyle(fontSize: 22),),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SixPage()));
                  },
                  child: Text('S',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SevenPage()));
                  },
                  child: Text('S',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),
              ],
            ),
          ),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('dhairya', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),

              ],
            ),
          ],
        )
    );
  }
}
class SaturdayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Saturday Menu',style: TextStyle(color: Colors.white,fontSize: 20),
          ),backgroundColor: Colors.purple[900],),drawer: Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text('Bite Book',style: TextStyle(fontStyle:FontStyle.italic,fontSize: 20),),
          ),
          ListTile(
            title: Text('Reset Mess options',style: TextStyle(fontSize: 15),),
            onTap: () => _resetOptions(context),
          ),
        ],
      ),
    ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[Container(height: 75,
            child: ListView(scrollDirection: Axis.horizontal,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FirstPage()));
                  },
                  child: Text('M',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),




                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SecondPage()));
                  },
                  child: Text('T',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),



                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ThirdPage()));
                  },
                  child: Text('W',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),


                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FourthPage()));
                  },
                  child: Text('T',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FivePage()));
                  },
                  child: Text('F',style: TextStyle(fontSize: 22),),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SixPage()));
                  },
                  child: Text('S',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SevenPage()));
                  },
                  child: Text('S',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),
              ],
            ),
          ),

            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(' 12ka',textAlign: TextAlign.left,style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),),

              ],
            ),

          ],
        )
    );
  }
}

class SundayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sunday Menu',style: TextStyle(color: Colors.white,fontSize: 20),
          ),backgroundColor: Colors.purple[900],),drawer: Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text('Bite Book',style: TextStyle(fontStyle:FontStyle.italic,fontSize: 20),),
          ),
          ListTile(
            title: Text('Reset Mess options',style: TextStyle(fontSize: 15),),
            onTap: () => _resetOptions(context),
          ),
        ],
      ),
    ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[Container(height: 75,
            child: ListView(scrollDirection: Axis.horizontal,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FirstPage()));
                  },
                  child: Text('M',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),




                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SecondPage()));
                  },
                  child: Text('T',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),



                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ThirdPage()));
                  },
                  child: Text('W',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),


                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FourthPage()));
                  },
                  child: Text('T',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FivePage()));
                  },
                  child: Text('F',style: TextStyle(fontSize: 22),),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SixPage()));
                  },
                  child: Text('S',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SevenPage()));
                  },
                  child: Text('S',style: TextStyle(fontSize: 22)),
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                    onPrimary: Colors.amber,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                  ),
                ),
              ],
            ),
          ),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('RomRom', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),

              ],
            ),
          ],
        )
    );


  }
}

class FirstPage extends StatelessWidget  {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Monday Menu',style: TextStyle(color: Colors.white),
          ),backgroundColor: Colors.purple[900],),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('  oyehoye', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        )
    );

  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tuesday Menu',style: TextStyle(color: Colors.white),
        ),backgroundColor: Colors.purple[900],),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('  Namaste', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wednesday Menu',style: TextStyle(color: Colors.white),
        ),backgroundColor: Colors.purple[900],),
      body:  Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('  kidda', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thursday Menu',style: TextStyle(color: Colors.white),
        ),backgroundColor: Colors.purple[900],),
      body:Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(' fir',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class FivePage extends StatelessWidget {
  const FivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Friday Menu',style: TextStyle(color: Colors.white),
        ),backgroundColor: Colors.purple[900],),
      body:  Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('cutipie', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
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
class SixPage extends StatelessWidget {
  const SixPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saturday Menu',style: TextStyle(color: Colors.white),
        ),backgroundColor: Colors.purple[900],),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(' 12ka',textAlign: TextAlign.left,style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),),
        ],
      ),

    );
  }
}

class SevenPage extends StatelessWidget {
  const SevenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sunday Menu', style: TextStyle(color: Colors.white),
        ),backgroundColor: Colors.purple[900],),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('RomRom', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
