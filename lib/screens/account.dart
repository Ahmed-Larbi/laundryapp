import 'package:flutter/material.dart';
import 'package:laundryapp/screens/mainpage.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 0) {
        Navigator.of(context).pushReplacement(
            new MaterialPageRoute(builder: (context) => new MainPage()));
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/login.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/ahmed.jpg"),
                  radius: 70,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Ahmed Larbi",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(top: 125),
                children: const <Widget>[
                  ListTile(
                    title: Text('Orders'),
                    leading: FlutterLogo(),
                    trailing: Icon(Icons.more_vert),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: FlutterLogo(),
                    title: Text('Settings'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    title: Text('Help Center'),
                    leading: FlutterLogo(),
                    trailing: Icon(Icons.more_vert),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    child: ListTile(
                      leading: FlutterLogo(),
                      title: Text('Log out'),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ),
                ],
              ),
            )
          ],
        )),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance),
              label: 'Account',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
