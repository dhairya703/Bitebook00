import 'package:flutter/material.dart';
import 'package:bitebook/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class specialc3 extends StatefulWidget {
  @override
  _specialc3State createState() => _specialc3State();
}

class _specialc3State extends State<specialc3> {
  int _weekday = DateTime.now().weekday;

  @override
  void initState() {
    super.initState();
    _openPage();
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
      appBar: AppBar(
        title: Text('D-Block Special mess'),),backgroundColor: Colors.purple[900],
      drawer: Drawer(
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
          title: Text('Monday Menu',style: TextStyle(color: Colors.white,fontSize: 20),
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
                Text('  Breakfast', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Poori+White Chenna Masala',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Idly+vada+Sambhar +Groundnut Chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)Masala Omelette',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Cornflakes+Cold Milk+ Watermelon juice',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  5)Bread+Butter+Jam',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  6)Tea/Coffee',style: TextStyle(color: Colors.black, fontSize: 18)),

                SizedBox(height: 10),
                Text('  Lunch', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Phulka+Dhai Palak',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Jeera Rice+ Veg Manchurian Gravy',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)White Rice+Veg Sambhar+Curd+ghee',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Thovaiyal+Papad+poriyal+Parupu podi',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  5)Salad(Tomato,Carrot,Lemon,Green chilli)',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Snacks',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Samosa+Sauce+Mint chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Tea/Coffee/Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Dinner', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Masala Kulcha+Kadai chicken Gravy+Kadhai paneer gravy',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)White Rice+Aloo Dry+Rasam',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)Sweet corn soup+Coconut Barfi/Mysore Pak',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Fruit Salad+Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
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
                Text('  Breakfast', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Paneer Paratha+Tomato Onion Gravy+Curd',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Veg Mixed Masala Dosai Sambar+chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)Boiled Egg',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Chocos Cold Milk Muskmelon Juice/Orange',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  5)Toasted Bread+Butter+Jam',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  6)Tea/Coffee',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Lunch',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1) Chappathi+Yellow Dal',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)White Rice +Raddish Sambar+Keerai Poriyal+Curd',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)Dal payasam',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Parupu Podi+Ghee+Thovaiyal+Pickle+Fryums',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  5)Salad(Cucumber,Carrot, Lemon)',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Snacks', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Vada Pao+Mirchi Fry',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Tea/Coffee/Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Dinner', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Phulka+Rajmaa Masala',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)White Rice+Dhal+Ladies FingerDRY+Rasam+Butter Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)Veg Manchow Soup',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Sooji Alwa / Jangiri (Alternate week)',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  5)Fruit+Chilled Badam Milk',style: TextStyle(color: Colors.black, fontSize: 18)),

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
                Text('  Breakfast', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Idly Vada+Sambar+chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Samiya Kichedi',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)Masala Egg Fry',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Cornflakes+Cold+ Milk MosambiJuice/Papaya Juice',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  5)Bread+Butter+Jam',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  6)Tea/Coffee+Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Lunch',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Phulka Chicken Butter Masala /Chicken Chettinad Masala(Alternate Week)',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Ghee Rice + Panneer Butter Masala/Panneer Chettinad',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)White Rice +Drumstick Sambar + Mix Veg Poriyal ',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Pickle+ Fryums+Curd',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  5)Parupu Podi+Ghee+Thovaiyal',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  6)Salad (Beetroot, Carrot)',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Snacks',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold) ),
                const Text('  1)Channa Chat/Masala chat',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Tea/Coffee/Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Dinner', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1) Pulka+Green Peas Masala',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)White Rice+Spicy Frency Fry+ Dhal',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)Cream of Onion Soup+Rasam+curd',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4) Banana Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  5)Ice Cream',style: TextStyle(color: Colors.black, fontSize: 18)),

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
                Text('  Breakfast',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Masala dosa+Coconut Chutney+Sambar',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Aloo paratha Tomato Chtuny Curd',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)Egg Omlet',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4).Chochos Cold Milk Pomegranate Juice ',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  5)Bread+Butter+Jam',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  6)Tea/Coffee+Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Lunch',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold) ),
                const Text('  1)Chappathi Kadhi Pakora+Dal Fry',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2) Veg Pulav+Rajma Masala',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)White Rice +Mixed Vegtable sambar ',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Poriyal+Rasam+Curd',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  5)Parupu Podi+Ghee+Thovaiyal+Pickle',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  6)Salad (Cucumber, Carrot)',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Snacks', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Veg Puff+Sauce',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Tea/Coffee/Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Dinner',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold) ),
                const Text('  1)Chole Batura+White Chenna Masala',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Lemon Rice+Egg Cury',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)White Rice Dhal Rasam+ Cabbage Poriyal',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Hot and Sour Veg Soup',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  5)Fruit Salad+Rose Milk',style: TextStyle(color: Colors.black, fontSize: 18)),

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
                Text('  Breakfast', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Pav Bhaji+Masala',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Pongal+vada+sambar+Coconut Chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3) Boiled Egg',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Cornflakes Cold Milk Pineapple Juice ',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  5)Bread+Butter+Jam',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  6)Tea/Coffee+Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Lunch', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1) Phulka Dhal Fry',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Veg Fried Rice+ Dragon Chicken /Chikan Tika',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)White Rice +Sambar+Rasam Curd Pappad Keerai Porial',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Parupu Podi+Ghee+Thovaiyal',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  5)Salad(Onion, Tomato, Lemon)',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Snacks',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Mysore Bonda/Keerai Vadai(From pattani',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Tea/Coffee/Milk+coconut chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Dinner', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Lacha Paroota+Veg Kuruma+Egg Curry',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)White Rice+Dhal+Rasam',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)Idly+Chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Tomato Soup+Seasonal Fruit',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  5)Chocolate milk shake',style: TextStyle(color: Colors.black, fontSize: 18)),
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
                Text('  Breakfast',textAlign: TextAlign.left,style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),),
                const Text('  1)Onion dosa+tomato Kara+Chtuny+sambar ',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2) Boiled Egg',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3).Chochos Cold Milk Grape Juice ',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Bread+Butter+Jam',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  5)Tea/Coffee+Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Lunch', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Chapathi+Aloo Capcicum Dry Masala',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2).Lemon Rice/Tamrid Rice(Alternate Week) + Dal Tadka',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)White Rice+Mix Veg Sambar+Porial',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4).Parupu podi Ghee Thovaiyal+Pickle',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  5)Salad(Tomato, Cucumber,Lemon)+Rasam+Curd',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),


                Text('  Snacks', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Cutlet+Sauce/Onion Pakoda+chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Tea/Coffee/Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Dinner', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1) Chapathi+Kashmiri Aloo Dum Masala',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Masala Dosa+Sambar+Chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)White Rice+Dhal+Carrot Poriyal+Rasam',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Cream chicken soup',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  5)Dry Jamun+Fruit Salad',style: TextStyle(color: Colors.black, fontSize: 18)),

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
                Text('  Breakfast', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1) VEG Stuffed Paratha Tomato Chutney-Curd',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Masala Kancheepuram idli-Masala Vada-Chtuny',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3) EGG BURJI',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Chochos Cold Milk Mixed Fruit Juice ',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  5)Bread+Butter+Jam',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  6)Tea/Coffee+Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Lunch', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Methi chappath Dal/Rajma curry(Alternate Week)',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2) Bisibilabath+Potato Chips',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)White Rice+Karakulambu+Rasam+Masala Butter Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Parupu podi+Ghee+Thovaiyal+Porial+Pickle',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  5)Salad(Onion Tomato Lemon)',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  6)Laddu/Badurea (Alternate Week)',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Snacks', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Veg Burger + Sauce',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Tea/Coffee/Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Dinner', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Phulka+Kadai Panner Gravy',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Hydrabad Dum Briyani+Babycorn Chilly',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)Chicken Hydrabad Dum Briyani+Onion Raitha+Curd Rice+Pickle',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)White Rice+Rasam+Cabbage Poriyal',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  5)Salad(Onion Tomato Lemon)',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  5)Lemon Juice+BANANA',style: TextStyle(color: Colors.black, fontSize: 18)),
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
                Text('  Breakfast', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Poori+White Chenna Masala',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Idly+vada+Sambhar +Groundnut Chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)Masala Omelette',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Cornflakes+Cold Milk+ Watermelon juice',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  5)Bread+Butter+Jam',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  6)Tea/Coffee',style: TextStyle(color: Colors.black, fontSize: 18)),

                SizedBox(height: 10),
                Text('  Lunch', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Phulka+Dhai Palak',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Jeera Rice+ Veg Manchurian Gravy',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)White Rice+Veg Sambhar+Curd+ghee',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Thovaiyal+Papad+poriyal+Parupu podi',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  5)Salad(Tomato,Carrot,Lemon,Green chilli)',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Snacks',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Samosa+Sauce+Mint chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Tea/Coffee/Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Dinner', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Masala Kulcha+Kadai chicken Gravy+Kadhai paneer gravy',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)White Rice+Aloo Dry+Rasam',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)Sweet corn soup+Coconut Barfi/Mysore Pak',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Fruit+Salad+Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
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
          Text('  Breakfast', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1)Paneer Paratha+Tomato Onion Gravy+Curd',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Veg Mixed Masala Dosai Sambar+chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)Boiled Egg',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)Chocos Cold Milk Muskmelon Juice/Orange',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  5)Toasted Bread+Butter+Jam',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  6)Tea/Coffee',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Lunch',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1) Chappathi+Yellow Dal',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)White Rice +Raddish Sambar+Keerai Poriyal+Curd',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)Dal payasam',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)Parupu Podi+Ghee+Thovaiyal+Pickle+Fryums',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  5)Salad(Cucumber,Carrot, Lemon)',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Snacks', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1)Vada Pao+Mirchi Fry',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Tea/Coffee/Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Dinner', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1)Phulka+Rajmaa Masala',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)White Rice+Dhal+Ladies FingerDRY+Rasam+Butter Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)Veg Manchow Soup',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)Sooji Alwa / Jangiri (Alternate week)',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  5)Fruit+Chilled Badam Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
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
          Text('  Breakfast', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1)Idly Vada+Sambar+chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Samiya Kichedi',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)Masala Egg Fry',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)Cornflakes+Cold+ Milk MosambiJuice/Papaya Juice',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  5)Bread+Butter+Jam',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  6)Tea/Coffee+Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Lunch',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1)Phulka Chicken Butter Masala /Chicken Chettinad Masala(Alternate Week)',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Ghee Rice + Panneer Butter Masala/Panneer Chettinad',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)White Rice +Drumstick Sambar + Mix Veg Poriyal ',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)Pickle+ Fryums+Curd',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  5)Parupu Podi+Ghee+Thovaiyal',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  6)Salad (Beetroot, Carrot)',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Snacks',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold) ),
          const Text('  1)Channa Chat/Masala chat',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Tea/Coffee/Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Dinner', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1) Pulka+Green Peas Masala',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)White Rice+Spicy Frency Fry+ Dhal',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)Cream of Onion Soup+Rasam+curd',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4) Banana Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  5)Ice Cream',style: TextStyle(color: Colors.black, fontSize: 18)),
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
          Text('  Breakfast',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1)Masala dosa+Coconut Chutney+Sambar',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Aloo paratha Tomato Chtuny Curd',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)Egg Omlet',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4).Chochos Cold Milk Pomegranate Juice ',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  5)Bread+Butter+Jam',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  6)Tea/Coffee+Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Lunch',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold) ),
          const Text('  1)Chappathi Kadhi Pakora+Dal Fry',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2) Veg Pulav+Rajma Masala',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)White Rice +Mixed Vegtable sambar ',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)Poriyal+Rasam+Curd',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  5)Parupu Podi+Ghee+Thovaiyal+Pickle',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  6)Salad (Cucumber, Carrot)',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Snacks', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1)Veg Puff+Sauce',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Tea/Coffee/Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Dinner',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold) ),
          const Text('  1)Chole Batura+White Chenna Masala',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Lemon Rice+Egg Cury',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)White Rice Dhal Rasam+ Cabbage Poriyal',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)Hot and Sour Veg Soup',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  5)Fruit Salad+Rose Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
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
          Text('  Breakfast', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1)Pav Bhaji+Masala',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Pongal+vada+sambar+Coconut Chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3) Boiled Egg',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)Cornflakes Cold Milk Pineapple Juice ',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  5)Bread+Butter+Jam',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  6)Tea/Coffee+Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Lunch', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1) Phulka Dhal Fry',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Veg Fried Rice+ Dragon Chicken /Chikan Tika',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)White Rice +Sambar+Rasam Curd Pappad Keerai Porial',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)Parupu Podi+Ghee+Thovaiyal',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  5)Salad(Onion, Tomato, Lemon)',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Snacks',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1)Mysore Bonda/Keerai Vadai(From pattani',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Tea/Coffee/Milk+coconut chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Dinner', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1)Lacha Paroota+Veg Kuruma+Egg Curry',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)White Rice+Dhal+Rasam',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)Idly+Chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)Tomato Soup+Seasonal Fruit',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  5)Chocolate milk shake',style: TextStyle(color: Colors.black, fontSize: 18)),
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
          Text('  Breakfast',textAlign: TextAlign.left,style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),),
          const Text('  1)Onion dosa+tomato Kara+Chtuny+sambar ',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2) Boiled Egg',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3).Chochos Cold Milk Grape Juice ',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)Bread+Butter+Jam',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  5)Tea/Coffee+Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Lunch', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1)Chapathi+Aloo Capcicum Dry Masala',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2).Lemon Rice/Tamrid Rice(Alternate Week) + Dal Tadka',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)White Rice+Mix Veg Sambar+Porial',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4).Parupu podi Ghee Thovaiyal+Pickle',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  5)Salad(Tomato, Cucumber,Lemon)+Rasam+Curd',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),


          Text('  Snacks', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1)Cutlet+Sauce/Onion Pakoda+chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Tea/Coffee/Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Dinner', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1) Chapathi+Kashmiri Aloo Dum Masala',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Masala Dosa+Sambar+Chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)White Rice+Dhal+Carrot Poriyal+Rasam',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)Cream chicken soup',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  5)Dry Jamun+Fruit Salad',style: TextStyle(color: Colors.black, fontSize: 18)),
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
          Text('  Breakfast', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1) VEG Stuffed Paratha Tomato Chutney-Curd',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Masala Kancheepuram idli-Masala Vada-Chtuny',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3) EGG BURJI',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)Chochos Cold Milk Mixed Fruit Juice ',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  5)Bread+Butter+Jam',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  6)Tea/Coffee+Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Lunch', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1)Methi chappath Dal/Rajma curry(Alternate Week)',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2) Bisibilabath+Potato Chips',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)White Rice+Karakulambu+Rasam+Masala Butter Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)Parupu podi+Ghee+Thovaiyal+Porial+Pickle',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  5)Salad(Onion Tomato Lemon)',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  6)Laddu/Badurea (Alternate Week)',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Snacks', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1)Veg Burger + Sauce',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Tea/Coffee/Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Dinner', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1)Phulka+Kadai Panner Gravy',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Hydrabad Dum Briyani+Babycorn Chilly',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)Chicken Hydrabad Dum Briyani+Onion Raitha+Curd Rice+Pickle',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)White Rice+Rasam+Cabbage Poriyal',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  5)Salad(Onion Tomato Lemon)',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  5)Lemon Juice+BANANA',style: TextStyle(color: Colors.black, fontSize: 18)),
        ],
      ),
    );
  }
}
