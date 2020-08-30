import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            menuHeader(),
           SizedBox(
             height: 80,
           ),
           firstBlock(),
            SizedBox(
              height: 80,
            ),
            secondBlock(),
          ],
        ),
      ),
      backgroundColor: Color(0xFFE5E5E5),
    );
  }

  Widget menuHeader() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(right: 20),
        child: Stack (
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Positioned(
                    child: Container(
                      width: 210,
                      height: 107,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(53.5)),
                      ),
                      child: Row (
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset('assets/img/profile-image.png',
                            width: 42,
                            height: 42,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Neelesh',
                                  style: TextStyle(fontSize: 16,
                                    color: Color(0xFF1B1D28),
                                  ),
                                ),
                                Text('Seattle,Washington',
                                  style: TextStyle(fontSize: 10,
                                      color: Color(0xFF7B7F9E)
                                  ),
                                ),
                              ]

                          ),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Image.asset('assets/img/close.png'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ]
            ),
          ],
        ),
      ),
    );
  }

  Widget firstBlock(){
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Home',
            style: TextStyle(fontSize: 16,
              color: Color(0xFF1B1D28),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text('Profile',
            style: TextStyle(fontSize: 16,
                color: Color(0xFF1B1D28),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text('Storage',
            style: TextStyle(fontSize: 16,
                color: Color(0xFF1B1D28)
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text('Shared',
            style: TextStyle(fontSize: 16,
                color: Color(0xFF1B1D28)
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text('Stats',
            style: TextStyle(fontSize: 16,
                color: Color(0xFF1B1D28)
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text('Settings',
            style: TextStyle(fontSize: 16,
                color: Color(0xFF1B1D28)
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text('Help',
            style: TextStyle(fontSize: 16,
                color: Color(0xFF1B1D28)
            ),
          ),
        ],
      ),
    );
  }

  Widget secondBlock() {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.all(20),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Image.asset('assets/img/logout.png'),
                SizedBox(
                  width: 10,
                ),
                Text('Logout',
                  style: TextStyle(fontSize: 16,
                    color: Color(0xFF1B1D28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Text('Version 2.0.1',
            style: TextStyle(fontSize: 10,
            color: Color(0xFF3A4276)
            ),
            )
          ]
      ),
    );
  }
}
