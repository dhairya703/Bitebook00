

import 'package:flutter/material.dart';
import 'package:bitebook/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NonvegPage extends StatefulWidget {
  @override
  _NonvegPageState createState() => _NonvegPageState();
}

class _NonvegPageState extends State<NonvegPage> {
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
        title: Text('D-Block NonVeg mess'),),backgroundColor: Colors.purple[900],
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
          children: <Widget>[Container(height: MediaQuery.sizeOf(context).height*0.1,
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
            Container(height: MediaQuery.sizeOf(context).height*0.9,
              child:const Column(crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                    Card(
                      child:
                        Column(
                          children: [
                            Text('  Breakfast', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),

                        Text('  1)Poori+White Chenna',style: TextStyle(color: Colors.black, fontSize: 18)),
                        Text('  2)Pesartu+ginger Chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
                        Text('  3)Egg Podimas',style: TextStyle(color: Colors.black, fontSize: 18)),
                        Text('  4)Bread+Butter+Jam',style: TextStyle(color: Colors.black, fontSize: 18)),
                        Text('  5)Tea/Coffee',style: TextStyle(color: Colors.black, fontSize: 18)),
                          ],
                        ),
    ),
                        SizedBox(height: 10),
                        Text('  Lunch', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                        Text('  1)Phulka+Dhal Makani',style: TextStyle(color: Colors.black, fontSize: 18)),
                        Text('  2)Tomato Rice + ALOO /GOBI 65 (Alternate Week)',style: TextStyle(color: Colors.black, fontSize: 18)),
                        Text('  3)White Rice+Raddish Sambar+Rasam + Curd+Fryums',style: TextStyle(color: Colors.black, fontSize: 18)),
                        Text('  4)Thorvaiyal+Pickel+Papad+Carrot & Beans mixed poriyal',style: TextStyle(color: Colors.black, fontSize: 18)),
                        Text('  5)Fruit(Pineapple)',style: TextStyle(color: Colors.black, fontSize: 18)),
                        SizedBox(height: 10),
                        Text('  Snacks',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                        Text('  1)Samosa+Sauce+Mint chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
                        Text('  2)Tea/Coffee/Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
                        SizedBox(height: 10),
                        Text('  Dinner', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                        Text('  1)Phulka+Dum Aloo Curry+Jeera Dal',style: TextStyle(color: Colors.black, fontSize: 18)),
                        Text('  2)White Rice+Yam Fry+Poriyal',style: TextStyle(color: Colors.black, fontSize: 18)),
                        Text('  3)Rasam+Curd+Pickle',style: TextStyle(color: Colors.black, fontSize: 18)),
                        Text('  4)Ice cream+Salad+Milk',style: TextStyle(color: Colors.black, fontSize: 18)),

                  ],
                ),
            ) ],
            ),


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
                const Text('  1)Paneer Paratha+Tomato Onion Gravy',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Pongal+Sambhar+chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)Bread+Butter+Jam',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Tea/Coffee',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Lunch',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Phulka+Andhra Dal/Soya Masala',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Lemon Rice',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)White Rice+Mochai Kara Kolambu+Rasam+Buttermilk',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Bindi Fry/BindiOnion Tomato fry',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  5)Parupu Podi+Ghee+Thovaiyal+Pickle+Fryums',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  6)Fruit(Banana)+Payasam',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Snacks', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Vada Pao+Mirchi Fry',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Tea/Coffee/Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Dinner', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Chapati+Kadhai Paneer',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Green peas pulav',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)White rice+Beans Poriyal+Rasam+curd+Pickle',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Salad+Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
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
                const Text('  1)Semiya kithedhi',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Masala Dosai Sambar+ Coconut Chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)Bread+Butter+Jam',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Tea/Coffee',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Lunch',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Chapathi+Aloo Peas Gravy',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Ghee Rice',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)White Rice+Raddish Samber+Keerai Poriyal',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Rasam+Curd',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  5)Parupu Podi+Ghee+Thovaiyal+Pickle+Fryums',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  6)Fruit(papaya)',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Snacks',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold) ),
                const Text('  1)Channa Chat/Masala chat',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Tea/Coffee/Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Dinner', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)White Chenna Masala+Laccha Paratha',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Green peas pulav',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)White rice+More kulambu+Rasam+curd+Pickle',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Salad+Hot Badam Milk+Mixed Vegetable Poriyal',style: TextStyle(color: Colors.black, fontSize: 18)),
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
                const Text('  1)Aloo Stuffed Paratha+Curd+Pickle',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Iddly+Vada+Sambar+GROUNDNUT Chutny',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)Bread+Butter+Jam',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Tea/Coffee',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Lunch',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold) ),
                const Text('  1)Phulka+Paneer Pasanda',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)bisebella Bath+Potato Chips',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)White Rice+Vegetable poriyal+Rasam+Buttermilk',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  5)Parupu Podi+Ginger Oil+Thovaiyal+Pickle',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  6)Fruit(Banana)',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Snacks', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Veg Puff+Sauce',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Tea/Coffee/Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Dinner',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold) ),
                const Text('  1)Chapati+Dal Makhani',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Masala Dosa+Chutney+Sambar',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)White rice+Capcicum and Soya Fry+Rasam',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Salad+Milk+Laddoo/Balusha',style: TextStyle(color: Colors.black, fontSize: 18)),
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
                const Text('  1)Pav Bajji +Masala',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Dosa+Veg MasalanCurry+Sambar+Chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)Toasted Bread+Butter+Jam',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Tea/Coffee',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Lunch', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Chappathi+Malai kofta Gravy',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Methi Pulav',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)White Rice+Brinjal Sambar+South type Poriyal',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Rasam+Buttermilk',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  5)Parupu Podi+Ghee+Thovaiyal+Onions+Pickle+Papad',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  6)Fruit(Watermelon)',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Snacks',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Mysore Bonda/Keerai Vadai(From pattani',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Tea/Coffee/Milk+coconut chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Dinner', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1) Phulka+Allo Mattar Masala(Green peas Aloo)',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2) idly+Sambar+chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)White rice+Gobi and Aloo Mixed Fry',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Salad+Coconut Barfi/Mysore Pak+Salad',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  5)Rasam+curd+Pickle',style: TextStyle(color: Colors.black, fontSize: 18)),
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
Expanded(child:SingleChildScrollView(
    scrollDirection:Axis.vertical,
  child:
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Card(elevation: 10,margin: EdgeInsets.symmetric(
                 vertical: 8,
                 horizontal: 5,
               ),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10),
                   ),child: Container(width: double.infinity,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         gradient: LinearGradient(
                           begin: Alignment.topLeft,
                           end: Alignment.bottomRight,
                           colors: [
                             Color(0xFF8A2387),
                             Color(0xFFE94057),
                             Color(0xFFF27121),
                           ],
                         ),
                       ),

                  child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                  Text('  Breakfast',textAlign: TextAlign.left,style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),),
                const Text('  1)Onion Dosa+sambar+chutney',style: TextStyle(color: Colors.black, fontSize: 18),textAlign: TextAlign.left),
                const Text('  2)Onion Potato Phoa',style: TextStyle(color: Colors.black, fontSize: 18),textAlign: TextAlign.left),
                const Text('  3)Bread+Butter+Jam',style: TextStyle(color: Colors.black, fontSize: 18),textAlign: TextAlign.left),
                const Text('  4)Tea/Coffee',style: TextStyle(color: Colors.black, fontSize: 18),textAlign: TextAlign.left),
                 ] )),),
                SizedBox(height: 10),
                Card(elevation: 10,margin: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 5,
                ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),child: Container(width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFF8A2387),
                            Color(0xFFE94057),
                            Color(0xFFF27121),
                          ],
                        ),
                      ),
                  child:
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children:[Text('  Lunch', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Phulka+Dal Tadka',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Schezvan Fried Rice+Gobi manchurian',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)White Rice+Ladies Finger Sambhar',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Veg Poriyal+Rasam +Curd',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  5)Parupu Podi+Ginger Oil+Thovaiyal+Pickle+Fryums',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  6)Fruit(Banana)',style: TextStyle(color: Colors.black, fontSize: 18))   ] )),),
    SizedBox(height: 10),
Card(elevation: 10,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),child: Container(width:double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF8A2387),
            Color(0xFFE94057),
            Color(0xFFF27121),
          ],
        ),
      ),
                child:
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                Text('  Snacks', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Cutlet+Sauce/Onion Pakoda+chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Tea/Coffee/Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
                          ] )),),
    SizedBox(height: 10),
                Card(elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),child: Container(width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFF8A2387),
                          Color(0xFFE94057),
                          Color(0xFFF27121),
                        ],
                      ),
                    ),
                child:Column(
                  crossAxisAlignment:CrossAxisAlignment.start,children:[
                Text('  Dinner', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Chapati+Veg fried Dal',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Pan veg Fried Noodles',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)White rice+Avaraikai Poriyal+Rasam',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Salad+Chocolate Milkshake',style: TextStyle(color: Colors.black, fontSize: 18) ) ] )),),
                SizedBox(height: 10),

],
             )))])
 );
  }
}

class SundayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sunday Menu',style: TextStyle(color: Colors.white,fontSize: 20),
          ),backgroundColor: Colors.purple),drawer: Drawer(
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
        body:  Card(child:SingleChildScrollView(
        scrollDirection:Axis.vertical,
        child:Column(
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
            Card(elevation: 10,margin: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 5,
            ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),child: Container(width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF8A2387),
                        Color(0xFFE94057),
                        Color(0xFFF27121),
                      ],
                    ),
                  ),

                  child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text('  Breakfast', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                        const Text('  1)Veg Paratha+Tomato chutney ',style: TextStyle(color: Colors.black, fontSize: 18)),
                        const Text('  2)Iddly-Vada Sambar+Kara Chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
                        const Text('  3)Bread+Butter+Jam',style: TextStyle(color: Colors.black, fontSize: 18)),
                        const Text('  4)Tea/Coffee',style: TextStyle(color: Colors.black, fontSize: 18)),
                      ] )),),
            SizedBox(height: 0.5),
            Card(elevation: 10,margin: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 5,
            ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),child: Container(width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.pinkAccent,
                        Colors.red,
                        Colors.pinkAccent
                      ],
                    ),
                  ),
                  child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children:[Text('  Lunch', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                        const Text('  1)Chapati+Mattar paneer',style: TextStyle(color: Colors.black, fontSize: 18)),
                        const Text('  2)Tamarind Rice+Aloo Gobi Dry',style: TextStyle(color: Colors.black, fontSize: 18)),
                        const Text('  3)Plain Rice+Kadhi Pakkoda Curry',style: TextStyle(color: Colors.black, fontSize: 18)),
                        const Text('  4)Rasam+Curd',style: TextStyle(color: Colors.black, fontSize: 18)),
                        const Text('  5)Parupu Podi+Ginger Oil+Thovaiyal+Papad+Pickle',style: TextStyle(color: Colors.black, fontSize: 18)),
                        const Text('  6)Mixed Fruits',style: TextStyle(color: Colors.black, fontSize: 18)),
                        const Text('  6)Mixed Fruits',style: TextStyle(color: Colors.black, fontSize: 18)),
                        const Text('  6)Mixed Fruits',style: TextStyle(color: Colors.black, fontSize: 18)),
                        const Text('  6)Mixed Fruits',style: TextStyle(color: Colors.black, fontSize: 18)),
                        const Text('  6)Mixed Fruits',style: TextStyle(color: Colors.black, fontSize: 18)),
                        const Text('  6)Mixed Fruits',style: TextStyle(color: Colors.black, fontSize: 18)),const Text('  6)Mixed Fruits',style: TextStyle(color: Colors.black, fontSize: 18)),const Text('  6)Mixed Fruits',style: TextStyle(color: Colors.black, fontSize: 18)),
                        const Text('  6)Mixed Fruits',style: TextStyle(color: Colors.black, fontSize: 18)),
                        const Text('  6)Mixed Fruits',style: TextStyle(color: Colors.black, fontSize: 18)),
                        const Text('  6)Mixed Fruits',style: TextStyle(color: Colors.black, fontSize: 18)),


                      ] )),),
            SizedBox(height: 0.5),
            Card(elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),child: Container(width:double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF8A2387),
                        Color(0xFFE94057),
                        Color(0xFFF27121),
                      ],
                    ),
                  ),
                  child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text('  Snacks', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                        const Text('  1)Veg Burger + Sauce',style: TextStyle(color: Colors.black, fontSize: 18)),
                        const Text('  2)Tea/Coffee/Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
                      ] )),),
            SizedBox(height: 10),
            Card(elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),child: Container(width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF8A2387),
                        Color(0xFFE94057),
                        Color(0xFFF27121),
                      ],
                    ),
                  ),
                  child:Column(
                      crossAxisAlignment:CrossAxisAlignment.start,children:[
                    Text('  Dinner', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                    const Text('  1)Bhatura+White Channa Masala',style: TextStyle(color: Colors.black, fontSize: 18)),
                    const Text('  2)Veg Briyani+Gobi Fry+Onion Raitha Curd Rice',style: TextStyle(color: Colors.black, fontSize: 18)),
                    const Text('  3)Pickle+Thovaiyal',style: TextStyle(color: Colors.black, fontSize: 18)),
                    const Text('  4)Salad',style: TextStyle(color: Colors.black, fontSize: 18)), ] )),),
            SizedBox(height: 10),

          ],)])),

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
                const Text('  1)Poori+White Chenna',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Pesartu+ginger Chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)Bread+Butter+Jam',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Tea/Coffee',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Lunch', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Oil Chapati+Kadhai Veg Gravy',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Tomato Rice',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)White Rice+Drumstick Sambhar+Ghee',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Thorvaiyal+Pickel+Papad+Carrot & Beans mixed poriyal',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  5)Fruit(Pineapple)',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Snacks',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Samosa+Sauce+Mint chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)Tea/Coffee/Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
                SizedBox(height: 10),
                Text('  Dinner', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
                const Text('  1)Phulka+Dum Aloo Curry+Jeera Dal',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  2)White Rice+Yam Fry+Poriyal',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  3)Rasam+Curd+Pickle',style: TextStyle(color: Colors.black, fontSize: 18)),
                const Text('  4)Ice cream+Salad+Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
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
          const Text('  1)Paneer Paratha+Tomato Onion Gravy',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Pongal+Sambhar+chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)Bread+Butter+Jam',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)Tea/Coffee',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Lunch',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1)Phulka+Andhra Dal/Soya Masala',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Lemon Rice',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)White Rice+Mochai Kara Kolambu+Rasam+Buttermilk',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)Bindi Fry/BindiOnion Tomato fry',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  5)Parupu Podi+Ghee+Thovaiyal+Pickle+Fryums',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  6)Fruit(Banana)+Payasam',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Snacks', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1)Vada Pao+Mirchi Fry',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Tea/Coffee/Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Dinner', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1)Chapati+Kadhai Paneer',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Green peas pulav',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)White rice+Beans Poriyal+Rasam+curd+Pickle',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)Salad+Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
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
          const Text('  1)Semiya kithedhi',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Masala Dosai Sambar+ Coconut Chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)Bread+Butter+Jam',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)Tea/Coffee',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Lunch',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1)Chapathi+Aloo Peas Gravy',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Ghee Rice',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)White Rice+Raddish Samber+Keerai Poriyal',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)Rasam+Curd',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  5)Parupu Podi+Ghee+Thovaiyal+Pickle+Fryums',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  6)Fruit(papaya)',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Snacks',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold) ),
          const Text('  1)Channa Chat/Masala chat',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Tea/Coffee/Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Dinner', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1)White Chenna Masala+Laccha Paratha',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Green peas pulav',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)White rice+More kulambu+Rasam+curd+Pickle',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)Salad+Hot Badam Milk+Mixed Vegetable Poriyal',style: TextStyle(color: Colors.black, fontSize: 18)),
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
          const Text('  1)Aloo Stuffed Paratha+Curd+Pickle',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Iddly+Vada+Sambar+GROUNDNUT Chutny',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)Bread+Butter+Jam',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)Tea/Coffee',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Lunch',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold) ),
          const Text('  1)Phulka+Paneer Pasanda',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)bisebella Bath+Potato Chips',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)White Rice+Vegetable poriyal+Rasam+Buttermilk',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  5)Parupu Podi+Ginger Oil+Thovaiyal+Pickle',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  6)Fruit(Banana)',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Snacks', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1)Veg Puff+Sauce',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Tea/Coffee/Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Dinner',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold) ),
          const Text('  1)Chapati+Dal Makhani',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Masala Dosa+Chutney+Sambar',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)White rice+Capcicum and Soya Fry+Rasam',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)Salad+Milk+Laddoo/Balusha',style: TextStyle(color: Colors.black, fontSize: 18)),
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
          const Text('  1)Pav Bajji +Masala',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Dosa+Veg MasalanCurry+Sambar+Chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)Toasted Bread+Butter+Jam',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)Tea/Coffee',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Lunch', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1)Chappathi+Malai kofta Gravy',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Methi Pulav',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)White Rice+Brinjal Sambar+South type Poriyal',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)Rasam+Buttermilk',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  5)Parupu Podi+Ghee+Thovaiyal+Onions+Pickle+Papad',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  6)Fruit(Watermelon)',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Snacks',style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1)Mysore Bonda/Keerai Vadai(From pattani',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Tea/Coffee/Milk+coconut chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Dinner', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1) Phulka+Allo Mattar Masala(Green peas Aloo)',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2) idly+Sambar+chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)White rice+Gobi and Aloo Mixed Fry',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)Salad+Coconut Barfi/Mysore Pak+Salad',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  5)Rasam+curd+Pickle',style: TextStyle(color: Colors.black, fontSize: 18)),
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
          const Text('  1)Onion Dosa+sambar+chutney',style: TextStyle(color: Colors.black, fontSize: 18),textAlign: TextAlign.left),
          const Text('  2)Onion Potato Phoa',style: TextStyle(color: Colors.black, fontSize: 18),textAlign: TextAlign.left),
          const Text('  3)Bread+Butter+Jam',style: TextStyle(color: Colors.black, fontSize: 18),textAlign: TextAlign.left),
          const Text('  4)Tea/Coffee',style: TextStyle(color: Colors.black, fontSize: 18),textAlign: TextAlign.left),
          SizedBox(height: 10),
          Text('  Lunch', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1)Phulka+Dal Tadka',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Schezvan Fried Rice+Gobi manchurian',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)White Rice+Ladies Finger Sambhar',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)Veg Poriyal+Rasam +Curd',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  5)Parupu Podi+Ginger Oil+Thovaiyal+Pickle+Fryums',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  6)Fruit(Banana)',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),


          Text('  Snacks', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1)Cutlet+Sauce/Onion Pakoda+chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Tea/Coffee/Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Dinner', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1)Chapati+Veg fried Dal',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Pan veg Fried Noodles',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)White rice+Avaraikai Poriyal+Rasam',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)Salad+Chocolate Milkshake',style: TextStyle(color: Colors.black, fontSize: 18)),
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
          const Text('  1)Veg Paratha+Tomato chutney ',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Iddly-Vada Sambar+Kara Chutney',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)Bread+Butter+Jam',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)Tea/Coffee',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Lunch', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1)Chapati+Mattar paneer',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Tamarind Rice+Aloo Gobi Dry',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)Plain Rice+Kadhi Pakkoda Curry',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)Rasam+Curd',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  5)Parupu Podi+Ginger Oil+Thovaiyal+Papad+Pickle',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  6)Mixed Fruits',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Snacks', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1)Veg Burger + Sauce',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Tea/Coffee/Milk',style: TextStyle(color: Colors.black, fontSize: 18)),
          SizedBox(height: 10),
          Text('  Dinner', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold)),
          const Text('  1)Bhatura+White Channa Masala',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  2)Veg Briyani+Gobi Fry+Onion Raitha Curd Rice',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  3)Pickle+Thovaiyal',style: TextStyle(color: Colors.black, fontSize: 18)),
          const Text('  4)Salad',style: TextStyle(color: Colors.black, fontSize: 18)),
        ],
      ),
    );
  }
}
