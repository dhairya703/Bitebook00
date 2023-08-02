import 'package:flutter/material.dart';
import 'package:bitebook/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeekdayPage extends StatefulWidget {
  @override
  _WeekdayPageState createState() => _WeekdayPageState();
}

class _WeekdayPageState extends State<WeekdayPage> {

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
              title: const Text('D-Block Veg mess',
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
            body: WillPopScope( onWillPop: () async => false,
                child:TabBarView(
              children: tabPages,
            )),)
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
                            ' ⊙ Poori+White Chenna/Black chenna(alternate week)',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(
                            ' ⊙ Idly+Vada+Sambhar+groundnut chutny/Mint chutny(alternate week)',
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
                        const Text(' ⊙ Oil Chapati+Peas Masala Gravy',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Tomato Rice+Rasam',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(
                            ' ⊙ White Rice+Drumstick Sambhar+Ghee+Parupu Podi',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(
                            ' ⊙  Thorvaiyal+Pickel+Papad+Carrot & Beans mixed poriyal',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Fruit(Pineapple)',
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
                        const Text(' ⊙ Phulka+Dum Aloo Curry+Jeera Dal,',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ White Rice+Yam Fry+Poriyal',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Rasam+Curd+Pickle,',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Ice cream+Salad+Milk',
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
                        const Text(' ⊙ Paneer Paratha,TomatoOnion Gravy',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙ Pongal,Sambhar,chutney',
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
                        const Text(
                            ' ⊙ Phulka,Andhra Dal/Soya Masala,Lemon Rice',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ White Rice,Mochai Kara Kolambu',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(
                            ' ⊙ Rasam,Buttermilk,Bindi Fry/BindiOnion Tomato fry',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙  Parupu Podi,Ginger Oil,Thovaiyal',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Pickle,Fryums',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Fruit(Banana)+Payasam',
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
                        const Text(' ⊙ Chapati,Kadhai Paneer,',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(
                            ' ⊙ Green peas pulav,White rice,Beans Poriyal',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ ,Rasam,curd,Pickle,',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Salad+Milk',
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
                        const Text(' ⊙ Semiya kithedhi',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙ Masala Dosai Sambar+ Coconut Chutney',
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
                        const Text(' ⊙ Chapathi+Aloo Peas Gravy',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Ghee Rice',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(
                            ' ⊙ White Rice+Raddish Samber+Keerai Poriyal',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Rasam+Curd',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(
                            ' ⊙ Parupu Podi+Ghee+Thovaiyal+Pickle+Fryums',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Fruit(papaya)+Lemon Juice',
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
                        const Text(' ⊙ Boiled Peanut Masala/Boiled Green moong Dhal/fry',
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
                        const Text(' ⊙ White Chenna Masala+Laccha Paratha',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Hot Badam Milk+Mixed Vegetable Poriyal',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ White rice+More kulambu',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Salad+Rasam+curd+Pickle',
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
                        const Text(' ⊙ Aloo Stuffed Paratha+Curd+Pickle',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙ Podidosa+ginger chutney',
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
                        const Text(' ⊙ Phulka+Paneer Pasanda',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ bisebella Bath+Potato Chips',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(
                            ' ⊙ White Rice+Vegetable poriyal+Rasam+Buttermilk',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Parupu Podi+Ginger Oil+Thovaiyal+Pickle',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(
                            ' ⊙ FruitSalad(Mango+Green Grapes+Pappaya)',
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

                        const Text(' ⊙  Chapati,Dal Makhani,Masala Dosa',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(
                            ' ⊙ Chutney, Sambar, White rice,Capsicum and Soya Fry',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Rasam,Salad,Milk',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Laddoo/Gulab jamun',
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
                        const Text(' ⊙ Veg Paratha+Tomato Chutney',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙ Dosa+Veg Masala Curry+Sambar+Chutney',
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
                        const Text(' ⊙ Chappathi+Malai kofta Gravy',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Methi Pulav',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(
                            ' ⊙ White Rice+Brinjal Sambar+South type Poriyal',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Rasam+Buttermilk',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(
                            ' ⊙ Parupu Podi+Ghee+Thovaiyal+Onions+Pickle+Papad',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Fruit(Watermelon)',
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
                            ' ⊙ Phulka+Allo Mattar Masala(Green peas Aloo)',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ idly+Sambar+chutney',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ White rice+Gobi  Fry',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Bhalusha/Coconut Barfi/Mysore Pak+Salad',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Rasam+curd+Pickle',
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
                        const Text(' ⊙ Pav Bhaji+Masala',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            textAlign: TextAlign.left),
                        const Text(' ⊙ Idly+Vada+Sambhar+Kara Chutney',
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
                        const Text(' ⊙ Phulka+Dal Tadka',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Schezvan Fried Rice+Gobi manchurian',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ White Rice+Ladies Finger Sambhar',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Cabbage Poriyal+Rasam +Curd',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Parupu Podi+Ginger Oil',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Thovaiyal+Pickle+Fryums',
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        const Text(' ⊙ Fruit(Banana)+Lemon Mint Juice',
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
                            ' ⊙ Noodle/onion/banana bajji(alternate week)',
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
                        const Text(' ⊙ Chapati+Veg fried Dal',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Semiya kitchadi+Sambhar',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ White rice+Avaraikai Poriyal+Rasam',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18)),
                        const Text(' ⊙ Salad+Chocolate Milkshake',
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
                          const Text(' ⊙ Onion Dosa+sambar+chutney',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                              textAlign: TextAlign.left),
                          const Text(' ⊙ Onion potato poha',
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
                          const Text(' ⊙ Tamarind Rice+Aloo Gobi Dry',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          const Text(' ⊙ Plain Rice+Kadhi Pakkoda Curry',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          const Text(' ⊙ Rasam+Curd',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          const Text(
                              ' ⊙ Parupu Podi+Ginger Oil+Thovaiyal+Papad+Pickle',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          const Text(' ⊙ Mixed Fruits(Mango+watermelon+grapes)',
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
                          const Text(' ⊙ Chapati+Matar paneer',
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18)),
                          const Text(
                              ' ⊙ Veg Briyani+Gobi Fry+Onion Raitha+Curd Rice',
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18)),
                          const Text(' ⊙ Pickle+Thovaiyal',
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18)),
                          const Text(' ⊙ Salad',
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
