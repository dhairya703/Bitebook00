
import 'package:flutter/material.dart';
import 'package:bitebook/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class specialc5 extends StatefulWidget {
  @override
  _specialc5State createState() => _specialc5State();
}

class _specialc5State extends State<specialc5> {

  int currentDay = DateTime.now().weekday - 1;
  @override
  void initState() {
    super.initState();
    // _openPage();
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
  List<Widget> tabPages = [
    MondayPage(),
    TuesdayPage(),
    WednesdayPage(),
    ThursdayPage(),
    FridayPage(),
    SaturdayPage(),
    SundayPage(),

  ];
  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 7,
    initialIndex: currentDay,
    child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.amber,
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const Text('C-Block Special mess',
              style: TextStyle(color: Colors.amber)),
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.amber,
            indicatorWeight: 5,
            tabs: [
              Tab(
                  icon: FaIcon(
                    FontAwesomeIcons.m,
                    color: Colors.yellow,
                    size: 30,
                  ),
                  text: 'Monday'),
              Tab(
                  icon: FaIcon(
                    FontAwesomeIcons.t,
                    color: Colors.yellow,
                    size: 30,
                  ),
                  text: 'Tuesday'),
              Tab(
                  icon: FaIcon(
                    FontAwesomeIcons.w,
                    color: Colors.yellow,
                    size: 30,
                  ),
                  text: 'Wednesday'),
              Tab(
                  icon: FaIcon(
                    FontAwesomeIcons.t,
                    color: Colors.yellow,
                    size: 30,
                  ),
                  text: 'Thursday'),
              Tab(
                  icon: FaIcon(
                    FontAwesomeIcons.f,
                    color: Colors.yellow,
                    size: 30,
                  ),
                  text: 'Friday'),
              Tab(
                  icon: FaIcon(
                    FontAwesomeIcons.s,
                    color: Colors.yellow,
                    size: 30,
                  ),
                  text: 'Saturday'),
              Tab(
                  icon: FaIcon(
                    FontAwesomeIcons.s,
                    color: Colors.yellow,
                    size: 30,
                  ),
                  text: 'Sunday'),
            ],
          ),
        ),
        backgroundColor: Colors.black,
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text(
                  'Bite Book',
                  style:
                  TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
                ),
              ),
              ListTile(
                title: Text(
                  'Reset Mess Options',
                  style: TextStyle(fontSize: 15),
                ),
                onTap: () => _resetOptions(context),
                subtitle: Text(
                    'To change the mess selection press the Reset button.'),
              ),
              ListTile(
                title: Text('Vit Chennai Events'),
                onTap: () async {
                  String url = "https://vitchennaievents.com/conf1/";
                  var urllaunchable = await canLaunch(
                      url); //canLaunch is from url_launcher package
                  if (urllaunchable) {
                    await launch(
                        url); //launch is from url_launcher package to launch URL
                  } else {
                    print("URL can't be launched.");
                  }
                },
                subtitle: Text(
                    '"Experience the excitement and thrill at VIT Chennai upcoming events, where innovation meets entertainment!'),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .07,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(width: 4, color: Colors.black),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      primary: Colors.black87),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(" ➡️ Update App",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.amber,
                        )),
                  ),
                  onPressed: () async {
                    String url =
                        "https://drive.google.com/drive/folders/1mRwwlYOjKkX-kfxYz0EDIs-JawXEkQBy";
                    var urllaunchable = await canLaunch(
                        url); //canLaunch is from url_launcher package
                    if (urllaunchable) {
                      await launch(
                          url); //launch is from url_launcher package to launch URL
                    } else {
                      print("URL can't be launched.");
                    }
                  },
                ),
              )
            ],
          ),
        ),

        body: WillPopScope(
            onWillPop: () async => false,
            child:TabBarView(
          children: tabPages,
        ))),
  );
}

// String _getWeekdayName(int weekday) {
//   switch (weekday) {
//     case 1:
//       return 'Monday';
//     case 2:
//       return 'Tuesday';
//     case 3:
//       return 'Wednesday';
//     case 4:
//       return 'Thursday';
//     case 5:
//       return 'Friday';
//     case 6:
//       return 'Saturday';
//     case 7:
//       return 'Sunday';
//     default:
//       return '';
//   }
// }

class MondayPage extends StatelessWidget {
  const MondayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Card(
              elevation: 10,
              shadowColor: Colors.blue,
              margin: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 5,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                  padding:EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF00796B),
                        Color(0xFF009688),
                        Color(0xFF004D40),
                      ],
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          children: [
                            Text(' Breakfast',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                                width:
                                MediaQuery.of(context).size.width * 0.20),
                            Text('  🕖07:00-09:00',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const Text(
                            ' ⊙ Poori+White Chenna+Masala Omelette',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(
                            ' ⊙ Idly+Vada+Sambhar+groundnut chutny+podi+oil',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),

                        const Text(
                            ' ⊙ Cornflakes+ Cold Milk +Watermelon Juice',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙ Bread+Butter+Jam',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙ Tea/Coffee+Milk',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                      ])),
            ),
            SizedBox(height: 0.5),
            Card(
              elevation: 10,
              shadowColor: Colors.blue,
              margin: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 5,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                  padding:EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF00796B),
                        Color(0xFF009688),
                        Color(0xFF004D40),
                      ],
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('  Lunch',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                                width:
                                MediaQuery.of(context).size.width * 0.30),
                            Text('   🕛12:00-14:00',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const Text(' ⊙ Phulka+Dhal Palak',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Jeera Rice+Veg Manchurian Dry',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(
                            ' ⊙ White Rice+Veg Sambhar+Ghee+Parupu Podi',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(
                            ' ⊙  Thorvaiyal+Curd+Papad+ poriyal',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Salad(Tomato +Carrot+Lemon+Green Chilli',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Lemon Juice',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ])),
            ),
            SizedBox(height: 0.5),
            Card(
              elevation: 10,
              shadowColor: Colors.white24,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                  width: double.infinity,
                  padding:EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF00796B),
                        Color(0xFF009688),
                        Color(0xFF004D40),
                      ],
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('  Snacks',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                                width:
                                MediaQuery.of(context).size.width * 0.30),
                            Text(' 🕔17:00-18:30',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const Text(' ⊙ Samosa+Sauce+Mint Chutney',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Tea/Coffee/Milk',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                      ])),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 10,
              shadowColor: Colors.amber,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                  padding:EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF00796B),
                        Color(0xFF009688),
                        Color(0xFF004D40),
                      ],
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('  Dinner',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                                width:
                                MediaQuery.of(context).size.width * 0.30),
                            Text('  🕖19:00-21:00',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const Text(' ⊙ Masaa Kulcha+Kadai Chicken GRavy+Kadai Paneer Gravy,',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ White Rice+Aloo Dry+Rasam',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Sweet corn veg soup,',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Coconut Barfi/Mysore Pak(alternate week)',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Fruit+Salad+Milk',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                      ])),
            ),
          ])),
    );
  }
}

class TuesdayPage extends StatelessWidget {
  const TuesdayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Card(
              elevation: 10,
              shadowColor: Colors.blue,
              margin: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 5,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                  padding:EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF00796B),
                        Color(0xFF009688),
                        Color(0xFF004D40),
                      ],
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          children: [
                            Text(' Breakfast',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                                width:
                                MediaQuery.of(context).size.width * 0.20),
                            Text('  🕖07:00-09:00',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const Text(' ⊙ Paneer Paratha,TomatoOnion Gravy+Curd',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙Veg Mixed Masala Dosai+Sambar+Mint chutney',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙ Boiled Egg',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙Chochos+ Cold Milk+Mango Juice ',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙ Toasted Bread+Butter+Jam',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙ Tea/Coffee',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                      ])),
            ),
            SizedBox(height: 0.5),
            Card(
              elevation: 10,
              shadowColor: Colors.blue,
              margin: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 5,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                  padding:EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF00796B),
                        Color(0xFF009688),
                        Color(0xFF004D40),
                      ],
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('  Lunch',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                                width:
                                MediaQuery.of(context).size.width * 0.30),
                            Text('   🕛12:00-14:00',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const Text(
                            ' ⊙ Chappathi+Yellow Dal',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Veg Pulav+Malai Kofta',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(
                            ' ⊙ White Rice+Raddish Sambar+Fryums',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(
                            ' ⊙ Keerai Poriyal+Curd+Pickle',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙  Parupu Podi, Ghee,Thovaiyal',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Dal Payasam',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Butter milk',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ .Salad(Cucumber+Carrot+Lemon)',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ])),
            ),
            SizedBox(height: 0.5),
            Card(
              elevation: 10,
              shadowColor: Colors.white24,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                  width: double.infinity,
                  padding:EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF00796B),
                        Color(0xFF009688),
                        Color(0xFF004D40),
                      ],
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('  Snacks',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                                width:
                                MediaQuery.of(context).size.width * 0.30),
                            Text(' 🕔17:00-18:30',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const Text(' ⊙ Vada Pao+Mirchi Fry',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Tea/Coffee/Milk',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                      ])),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 10,
              shadowColor: Colors.amber,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                  padding:EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF00796B),
                        Color(0xFF009688),
                        Color(0xFF004D40),
                      ],
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('  Dinner',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                                width:
                                MediaQuery.of(context).size.width * 0.30),
                            Text('  🕖19:00-21:00',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const Text(' ⊙ Phulka+Rajmaa Masala',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(
                            ' ⊙ White Rice + Dhal +Ladies Finger DRY',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Rasam+Butter Milk',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Veg Manchow Soup',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙  Fruit+Chilled Badam Milk',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Sooji Alwa / Jangiri (Alternate week) ',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                      ])),
            ),
          ])),
    );
  }
}

class ThursdayPage extends StatelessWidget {
  const ThursdayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Card(
              elevation: 10,
              shadowColor: Colors.blue,
              margin: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 5,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                  padding:EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF00796B),
                        Color(0xFF009688),
                        Color(0xFF004D40),
                      ],
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          children: [
                            Text(' Breakfast',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                                width:
                                MediaQuery.of(context).size.width * 0.20),
                            Text('  🕖07:00-09:00',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const Text(' ⊙ Masala dosa+Coconut Chtuny+Sambar+Podi oil',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙ Aloo paratha+Tomato Chtuny+Curd',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙  Egg Omlet',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙  Chochos+Cold Milk+Pomeogranate Juice',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙ Bread+Butter+Jam',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙ Tea/Coffee',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                      ])),
            ),
            SizedBox(height: 0.5),
            Card(
              elevation: 10,
              shadowColor: Colors.blue,
              margin: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 5,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                  padding:EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF00796B),
                        Color(0xFF009688),
                        Color(0xFF004D40),
                      ],
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('  Lunch',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                                width:
                                MediaQuery.of(context).size.width * 0.30),
                            Text('   🕛12:00-14:00',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const Text(' ⊙  Chappathi+Kadhi Pakora',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Veg Pulav+Rajma Masala',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(
                            ' ⊙ White Rice + Morekulambu+Dhal Fry',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Poriyal+Rasam+Curd',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(
                            ' ⊙ Parupu Podi+Ghee+Thovaiyal',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Salad(Cucumber+Carrot)+Butter Milk',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ])),
            ),
            SizedBox(height: 0.5),
            Card(
              elevation: 10,
              shadowColor: Colors.white24,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                  width: double.infinity,
                  padding:EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF00796B),
                        Color(0xFF009688),
                        Color(0xFF004D40),
                      ],
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('  Snacks',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                                width:
                                MediaQuery.of(context).size.width * 0.30),
                            Text(' 🕔17:00-18:30',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const Text(' ⊙ Veg Puff+Sauce',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Tea/Coffee/Milk',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                      ])),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 10,
              shadowColor: Colors.amber,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                  padding:EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF00796B),
                        Color(0xFF009688),
                        Color(0xFF004D40),
                      ],
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('  Dinner',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                                width:
                                MediaQuery.of(context).size.width * 0.30),
                            Text('  🕖19:00-21:00',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const Text(' ⊙  Chole Batura +White Chenna Masala',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(
                            ' ⊙  Lemon Rice + Egg Cury',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ White Rice Dhal+ Rasam +Cabbage Poriyal',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Hot and Sour Veg Soup',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Fruit Salad+Rose Milk',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                      ])),
            ),
          ])),
    );
  }
}

class WednesdayPage extends StatelessWidget {
  const WednesdayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Card(
              elevation: 10,
              shadowColor: Colors.blue,
              margin: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 5,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                  padding:EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF00796B),
                        Color(0xFF009688),
                        Color(0xFF004D40),
                      ],
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          children: [
                            Text(' Breakfast',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                                width:
                                MediaQuery.of(context).size.width * 0.20),
                            Text('  🕖07:00-09:00',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const Text(' ⊙ Idly Vada+Sambar + Tomato Chutney+ Podi oil',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙ Samiya Kichedi',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙ Masala Egg Fry',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙ Cornflakes+Cold Milk+MosambiJuice/Papaya Juice',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙ Bread+Butter+Jam',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙ Tea/Coffee',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                      ])),
            ),
            SizedBox(height: 0.5),
            Card(
              elevation: 10,
              shadowColor: Colors.blue,
              margin: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 5,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                  padding:EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF00796B),
                        Color(0xFF009688),
                        Color(0xFF004D40),
                      ],
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('  Lunch',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                                width:
                                MediaQuery.of(context).size.width * 0.30),
                            Text('   🕛12:00-14:00',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const Text(' ⊙  Phulka+Chicken Butter Masala /Chicken Chettinad Masala(Alternate Week)',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Ghee Rice+Panneer Butter Masala/Panneer Chettinad Masala(Alternate Week)',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(
                            ' ⊙ White Rice+Drumstick Sambar+Mix Veg Poriyal+Curd',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Parupu Podi+Ghee+Thovaiyal+Pickle+Fryums',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(
                            ' ⊙ Salad (Beetroot+Carrot+Cucumber)',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Lemon Mint Juice',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ])),
            ),
            SizedBox(height: 0.5),
            Card(
              elevation: 10,
              shadowColor: Colors.white24,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                  width: double.infinity,
                  padding:EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF00796B),
                        Color(0xFF009688),
                        Color(0xFF004D40),
                      ],
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('  Snacks',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                                width:
                                MediaQuery.of(context).size.width * 0.30),
                            Text(' 🕔17:00-18:30',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const Text(' ⊙ Boiled Peanut Masala/Boiled Green Moong dal Masala',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Tea/Coffee/Milk',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                      ])),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 10,
              shadowColor: Colors.amber,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                  padding:EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF00796B),
                        Color(0xFF009688),
                        Color(0xFF004D40),
                      ],
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('  Dinner',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                                width:
                                MediaQuery.of(context).size.width * 0.30),
                            Text('  🕖19:00-21:00',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const Text(' ⊙  Phulka+Paneer Masala',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ White Rice Spicy Frency Fry+Dhal +Rasam+Curd',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Cream of Onion Soup',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Mango Fruit+Milk',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Ice Cream',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                      ])),
            ),
          ])),
    );
  }
}

class FridayPage extends StatelessWidget {
  const FridayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Card(
              elevation: 10,
              shadowColor: Colors.blue,
              margin: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 5,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                  padding:EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF00796B),
                        Color(0xFF009688),
                        Color(0xFF004D40),
                      ],
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          children: [
                            Text(' Breakfast',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                                width:
                                MediaQuery.of(context).size.width * 0.20),
                            Text('  🕖07:00-09:00',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const Text(' ⊙ Pav Bhaji+Masala',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙ Pongal+vada+sambar+Coconut Chutney',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙ Boiled Egg',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙ Cornflakes+Cold Milk+Pineapple Juice',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙  Bread+Butter+Jam',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙ Tea/Coffee',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                      ])),
            ),
            SizedBox(height: 0.5),
            Card(
              elevation: 10,
              shadowColor: Colors.blue,
              margin: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 5,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                  padding:EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF00796B),
                        Color(0xFF009688),
                        Color(0xFF004D40),
                      ],
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('  Lunch',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                                width:
                                MediaQuery.of(context).size.width * 0.30),
                            Text('   🕛12:00-14:00',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const Text(' ⊙ Phulka+Dhal Fry',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Veg Fried Rice+Dragon Chicken /Chicken Tikka Masala Alternate Week)+Panneer Tika Masala',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(
                            ' ⊙ White Rice+Sambar+Rasam+Curd+Pappad+Poriyal',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Parupu Podi+Ghee+Thovaiyal',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(
                            ' ⊙ Salad(Onion+Tomato+Lemon)',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Lemon Juice',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ])),
            ),
            SizedBox(height: 0.5),
            Card(
              elevation: 10,
              shadowColor: Colors.white24,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                  width: double.infinity,
                  padding:EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF00796B),
                        Color(0xFF009688),
                        Color(0xFF004D40),
                      ],
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('  Snacks',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                                width:
                                MediaQuery.of(context).size.width * 0.30),
                            Text(' 🕔17:00-18:30',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const Text(' ⊙ Mysore Bonda/Keerai Vadai(From pattani)',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Tea/Coffee/Milk+coconut chutney',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                      ])),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 10,
              shadowColor: Colors.amber,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                  padding:EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF00796B),
                        Color(0xFF009688),
                        Color(0xFF004D40),
                      ],
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('  Dinner',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                                width:
                                MediaQuery.of(context).size.width * 0.30),
                            Text('  🕖19:00-21:00',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const Text(
                            ' ⊙ Lacha Paroota+ Kashmiri aloo dum+Egg Curry',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙  White Rice+Dhal+Rasam',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Idly+Chutney+ sambar',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Tomato Soup+ Seasonal Fruit',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Chocolate milk shake',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                      ])),
            ),
          ])),
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

class SaturdayPage extends StatelessWidget {
  const SaturdayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Card(
              elevation: 10,
              shadowColor: Colors.blue,
              margin: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 5,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                  padding:EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF00796B),
                        Color(0xFF009688),
                        Color(0xFF004D40),
                      ],
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          children: [
                            Text(' Breakfast',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                                width:
                                MediaQuery.of(context).size.width * 0.20),
                            Text('  🕖07:00-09:00',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const Text(' ⊙ Onion dosa+tomato Kara Chtuny+sambar+Podi+oil',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙ Vegetable poha+ BOILED EGG',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙ Chochos+Cold Milk+Grape Juice',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙ Bread+Butter+Jam',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙ Tea/Coffee',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                      ])),
            ),
            SizedBox(height: 0.5),
            Card(
              elevation: 10,
              shadowColor: Colors.blue,
              margin: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 5,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                  padding:EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF00796B),
                        Color(0xFF009688),
                        Color(0xFF004D40),
                      ],
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('  Lunch',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                                width:
                                MediaQuery.of(context).size.width * 0.30),
                            Text('   🕛12:00-14:00',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const Text(' ⊙ Chapathi+Aloo Capsicum Dry Masala',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Lemon Rice/Tamrid Rice(Alternate Week)+Dal Tadka',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ White Rice+Mix Veg Sambar+Rasam+Curd+Pickle',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Parupu podi+Ghee+Thovalyal ',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Salad(Tomato+Cucumber+Lemon)',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Butter Milk',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),

                      ])),
            ),
            SizedBox(height: 0.5),
            Card(
              elevation: 10,
              shadowColor: Colors.white24,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                  width: double.infinity,
                  padding:EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF00796B),
                        Color(0xFF009688),
                        Color(0xFF004D40),
                      ],
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('  Snacks',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                                width:
                                MediaQuery.of(context).size.width * 0.30),
                            Text(' 🕔17:00-18:30',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const Text(
                            ' ⊙ Cutlet+Chutney/onion/banana bajji(alternate week)',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Tea/Coffee/Milk',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                      ])),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 10,
              shadowColor: Colors.amber,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                  padding:EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF00796B),
                        Color(0xFF009688),
                        Color(0xFF004D40),
                      ],
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('  Dinner',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                                width:
                                MediaQuery.of(context).size.width * 0.30),
                            Text('  🕖19:00-21:00',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const Text(' ⊙ Chapathi+Soya bean Masala',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Masala Dosa+Sambar+Chutney',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ White Rice+Dhal+Carrot Poriyal+Rasam',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Cream chicken soup',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Dry Jamun+ Fruit Salad',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                      ])),
            ),
          ])),
    );
  }
}

class SundayPage extends StatelessWidget {
  const SundayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Card(
                elevation: 10,
                shadowColor: Colors.blue,
                margin: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 5,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                    padding:EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFF00796B),
                          Color(0xFF009688),
                          Color(0xFF004D40),
                        ],
                      ),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            children: [
                              Text(' Breakfast',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                  width:
                                  MediaQuery.of(context).size.width * 0.20),
                              Text('  🕖07:00-09:00',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          const Text(' ⊙  VEG Stuffed Paratha+ TomatoChutney+Curd',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                              textAlign: TextAlign.left),
                          const Text(' ⊙  Idiyappam+Vadacarry+chtuny',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                              textAlign: TextAlign.left),
                          const Text(' ⊙  EGG BURJi',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                              textAlign: TextAlign.left),
                          const Text(' ⊙  Chochos+Cold Milk+Mixed Fruit Juice',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                              textAlign: TextAlign.left),
                          const Text(' ⊙ Bread+Butter+Jam',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                              textAlign: TextAlign.left),
                          const Text(' ⊙ Tea/Coffee',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                              textAlign: TextAlign.left),
                        ])),
              ),
              SizedBox(height: 0.5),
              Card(
                elevation: 10,
                shadowColor: Colors.blue,
                margin: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 5,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                    padding:EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFF00796B),
                          Color(0xFF009688),
                          Color(0xFF004D40),
                        ],
                      ),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('  Lunch',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                  width:
                                  MediaQuery.of(context).size.width * 0.30),
                              Text('   🕛12:00-14:00',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          const Text(' ⊙ Bhatura+White Chennaa Masala',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          const Text(' ⊙ Bisibilshath+Potato Chips',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          const Text(' ⊙ White Rice+Karakulambu+Rasam+Masala Butter Milk',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          const Text(' ⊙ .Salad(Onion+Tomoto+Lemon)',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          const Text(
                              ' ⊙ Parupu Podi+ghee+porial+Thovaiyal+Papad+Pickle',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          const Text(' ⊙ Laddu/Gulab Jamun (Alternate Week)',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ])),
              ),
              SizedBox(height: 0.5),
              Card(
                elevation: 10,
                shadowColor: Colors.white24,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                    width: double.infinity,
                    padding:EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFF00796B),
                          Color(0xFF009688),
                          Color(0xFF004D40),
                        ],
                      ),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('  Snacks',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                  width:
                                  MediaQuery.of(context).size.width * 0.30),
                              Text(' 🕔17:00-18:30',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          const Text(' ⊙ Pani puri',
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18)),
                          const Text(' ⊙ Tea/Coffee/Milk',
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18)),
                        ])),
              ),
              SizedBox(height: 10),
              Card(
                  elevation: 10,
                  shadowColor: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding:EdgeInsets.all(10),                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFF00796B),
                          Color(0xFF009688),
                          Color(0xFF004D40),
                        ],
                      ),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('  Dinner',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                  width:
                                  MediaQuery.of(context).size.width * 0.30),
                              Text('  🕖19:00-21:00',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          const Text(' ⊙ Phukla+Kadai Panneer Gravy',
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18)),
                          const Text(
                              ' ⊙ Hydrabadi Dum Briyani+Babycorn Chilly',
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18)),
                          const Text(' ⊙ Chicken+Hydrabad Dum Briyani+OnionRaitha ',
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18)),
                          const Text(' ⊙ Curd Rice+Pickle',
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18)),
                          const Text(' ⊙ White Rice+Rasam+Cabbage Poriyal ',
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18)),
                          const Text(' ⊙ Lemon Juice+BANANA ',
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18)),
                        ]),
                  ))
            ])));
  }
}


